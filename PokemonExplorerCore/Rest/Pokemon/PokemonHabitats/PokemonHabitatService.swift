import Foundation

/// Service for interaction with `/pokemon-habitat` endpoint.
public struct PokemonHabitatService: RestService {
  public let baseUrl = "https://pokeapi.co/api/v2"
  public let path = "/pokemon-habitat/{id,name}/{limit,offset}"
  public let session: URLSession

  /// Get a `PokemonHabitat`.
  ///
  /// - Parameter id: `PokemonHabitat` identifier.
  public func get(_ id: Int) async throws -> PokemonHabitat {
    return try await get(parameters: [("id", id)])
  }

  /// Get a `PokemonHabitat`.
  ///
  /// - Parameter name: `PokemonHabitat` name.
  public func get(_ name: String) async throws -> PokemonHabitat {
    return try await get(parameters: [("name", name)])
  }

  /// List `PokemonHabitat`'s.
  ///
  /// - Parameters:
  ///   - limit: ...
  ///   - offset: ...
  public func list(
    limit: Int,
    offset: Int
  ) async throws -> NamedAPIResourceList<PokemonHabitat> {
    return try await get(parameters: [
      ("limit", limit),
      ("offset", offset)
    ])
  }
}
