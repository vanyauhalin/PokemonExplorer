import PokemonExplorerCore
import RealmSwift
import SwiftUI

struct Pagination {
  enum Defaults {
    static let limit = 20
    static let offset = 0
    static let count = 0
  }

  private(set) var limit = Defaults.limit
  private(set) var offset = Defaults.offset
  private(set) var count = Defaults.count

  var pageNumber: Int {
    limit / Defaults.limit
  }
  var lastPageNumber: Int {
    Int((Float(count) / Float(limit)).rounded(.up))
  }
  var lastPage: Bool {
    pageNumber == lastPageNumber
  }

  mutating func update(count: Int) {
    self.count = count
  }

  mutating func incrementOffset() {
    self.offset += Defaults.limit
  }
}

class ViewModel: ObservableObject {
  typealias NamesWithData = [(String, Pokemon)]

  var pagination = Pagination()
  @Published var namesWithData: NamesWithData = []
  @Published var fetching = false

  func fetch() {
    Task { @MainActor in
      startFetching()
      do {
        let resourceList = try await fetchResourceList()
        pagination.update(count: resourceList.count)
        let data = try await fetchData(by: resourceList)
        try cache(data: data)
        let species = try await fetchSpecies(by: data)
        try cache(data: species)
        let names = extractNames(from: species, data: data)
        let merged = merge(names: names, data: data)
        upload(namesWithData: merged)
        pagination.incrementOffset()
      } catch {
        print(error)
      }
      endFetching()
    }
  }

  func restore() {
    Task { @MainActor in
      startFetching()
      do {
        let data = try restoreData()
        pagination.update(count: data.count)
        let species = try restoreSpecies(by: data)
        let names = extractNames(from: species, data: data)
        let merged = merge(names: names, data: data)
        upload(namesWithData: merged)
        pagination.incrementOffset()
      } catch {
        print(error)
      }
      endFetching()
    }
  }

  func restoreData() throws -> [Pokemon] {
    let start = pagination.limit * (pagination.pageNumber - 1) + 1
    let end = pagination.limit + pagination.offset + 1
    let sequence = Array(start..<end)
    let results = try DataProvider
      .realm()
      .objects(Pokemon.self)
      .where { pokemon in
        pokemon.id.in(sequence)
      }
    return Array(results)
  }

  func restoreSpecies(by data: [Pokemon]) throws -> [PokemonSpecies] {
    return try data.map { pokemon in
      let results = try DataProvider
        .realm()
        .objects(PokemonSpecies.self)
        .where { species in
          species.name == pokemon.name
        }
      return results.first!
    }
  }

  func cache<Item>(data: [Item]) throws where Item: Object {
    try data.forEach { item in
      guard !item.isInvalidated else { return }
      try item.add()
    }
  }

  func fetchResourceList() async throws -> NamedAPIResourceList<Pokemon> {
    var services = Core.rest.pokemon
    return try await services.pokemon.list(
      limit: pagination.limit,
      offset: pagination.offset
    )
  }

  func fetchData(
    by resourceList: NamedAPIResourceList<Pokemon>
  ) async throws -> [Pokemon] {
    var services = Core.rest.pokemon
    let service = services.pokemon
    return try await withThrowingTaskGroup(of: Pokemon.self) { group in
      var temporally: [Pokemon] = []
      temporally.reserveCapacity(resourceList.results.count)

      for resultsItem in resourceList.results {
        group.addTask { @MainActor in
          return try await service.get(resultsItem.name)
        }
      }
      for try await pokemon in group {
        temporally.append(pokemon)
      }

      return temporally
    }
  }

  func fetchSpecies(by pokemons: [Pokemon]) async throws -> [PokemonSpecies] {
    var services = Core.rest.pokemon
    let service = services.pokemonSpecies
    return try await withThrowingTaskGroup(of: PokemonSpecies.self) { group in
      var temporally: [PokemonSpecies] = []
      temporally.reserveCapacity(pokemons.count)

      for pokemon in pokemons {
        group.addTask { @MainActor in
          return try await service.get(pokemon.name)
        }
      }
      for try await species in group {
        temporally.append(species)
      }

      return temporally
    }
  }

  func extractNames(
    from species: [PokemonSpecies],
    data: [Pokemon]
  ) -> [String] {
    return species.enumerated().map { index, item in
      guard
        let name = item
          .names
          .first(where: { namesItem in
            namesItem.language!.name == "en"
          })
      else {
        return data[index].name
      }
      return name.name
    }
  }

  func merge(names: [String], data pokemons: [Pokemon]) -> NamesWithData {
    var temporally: [(String, Pokemon)] = []
    temporally.reserveCapacity(pokemons.count)
    (0..<pokemons.count).forEach { index in
      temporally.append((names[index], pokemons[index]))
    }
    return temporally
  }

  func upload(namesWithData: NamesWithData) {
    self.namesWithData += namesWithData
  }

  func startFetching() {
    fetching = true
  }

  func endFetching() {
    fetching = false
  }
}

struct ContentView: View {
  @ObservedObject var viewModel = ViewModel()

  var body: some View {
    NavigationView {
      VStack {
        List {
          ForEach(viewModel.namesWithData, id: \.0) { name, data in
            NavigationLink(
              destination: {
                DetailsView(viewModel: DetailsViewModel(
                  pokemon: data,
                  name: name
                ))
              },
              label: {
                Text(name)
              }
            )
          }
          if !viewModel.pagination.lastPage {
            ProgressView()
              .onAppear {
                viewModel.fetch()
              }
          }
        }
        .listStyle(.plain)
      }
      .navigationTitle("Pokémons")
      .toolbar {
        ToolbarItem(placement: .bottomBar) {
          if viewModel.fetching {
            Text("Fetching pokemons")
              .font(.footnote)
          } else {
            Text("Displayed \(viewModel.namesWithData.count) pokemon names")
              .font(.footnote)
          }
        }
      }
    }
  }
}
