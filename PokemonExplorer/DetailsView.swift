import PokemonExplorerCore
import SwiftUI

class DetailsViewModel: ObservableObject {
  let pokemon: Pokemon
  let name: String
  @Published var image: Image?

  var weight: Double {
    Measurement(
      value: Double(pokemon.weight),
      unit: UnitMass.hectograms
    )
    .converted(to: UnitMass.kilograms)
    .value
  }
  var height: Double {
    Measurement(
      value: Double(pokemon.height),
      unit: UnitLength.decimeters
    )
    .converted(to: UnitLength.centimeters)
    .value
  }

  init(pokemon: Pokemon, name: String) {
    self.pokemon = pokemon
    self.name = name
  }

  func fetchAvatar() {
    Task { @MainActor in
      do {
        let data = try await Core.rest.sprites.get(pokemon.id)
        if let uiImage = UIImage(data: data) {
          self.image = Image(uiImage: uiImage)
        }
      } catch {
        print(error)
      }
    }
  }
}

struct DetailsView: View {
  @ObservedObject var viewModel: DetailsViewModel

  var body: some View {
    VStack {
      if let image = viewModel.image {
        image.imageScale(.large)
      } else {
        ProgressView()
      }
      List {
        VStack(alignment: .leading) {
          Text("\(viewModel.weight.description) \(UnitMass.kilograms.symbol)")
          Text("Weight in kilograms")
            .font(.footnote)
            .foregroundColor(Color.gray)
        }
        VStack(alignment: .leading) {
          Text(
            "\(viewModel.height.description) \(UnitLength.centimeters.symbol)"
          )
          Text("Height in centimeters")
            .font(.footnote)
            .foregroundColor(Color.gray)
        }
      }
    }
    .listStyle(.plain)
    .navigationTitle(viewModel.name)
    .navigationBarTitleDisplayMode(.inline)
    .onAppear {
      viewModel.fetchAvatar()
    }
  }
}
