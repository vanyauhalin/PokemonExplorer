import Foundation

/// Service for interaction with `/pokemon-species` endpoint.
public struct PokemonSpeciesService: RestService {
  public let baseUrl = "https://pokeapi.co/api/v2"
  public let path = "/pokemon-species/{id,name}/{limit,offset}"
  public let session: URLSession

  /// Get a `PokemonSpecies`.
  ///
  /// - Parameter id: `PokemonSpecies` identifier.
  public func get(_ id: Int) async throws -> PokemonSpecies {
    return try await get(parameters: [("id", id)])
  }

  /// Get a `PokemonSpecies`.
  ///
  /// - Parameter name: `PokemonSpecies` name.
  public func get(_ name: String) async throws -> PokemonSpecies {
    return try await get(parameters: [("name", name)])
  }

  /// List `PokemonSpecies`'s.
  ///
  /// - Parameters:
  ///   - limit: ...
  ///   - offset: ...
  public func list(
    limit: Int,
    offset: Int
  ) async throws -> NamedAPIResourceList<PokemonSpecies> {
    return try await get(parameters: [
      ("limit", limit),
      ("offset", offset)
    ])
  }
}
