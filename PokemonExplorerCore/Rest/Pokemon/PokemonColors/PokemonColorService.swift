import Foundation

/// Service for interaction with `/pokemon-color` endpoint.
public struct PokemonColorService: RestService {
  public let baseUrl = "https://pokeapi.co/api/v2"
  public let path = "/pokemon-color/{id,name}/{limit,offset}"
  public let session: URLSession

  /// Get a `PokemonColor`.
  ///
  /// - Parameter id: `PokemonColor` identifier.
  public func get(_ id: Int) async throws -> PokemonColor {
    return try await get(parameters: [("id", id)])
  }

  /// Get a `PokemonColor`.
  ///
  /// - Parameter name: `PokemonColor` name.
  public func get(_ name: String) async throws -> PokemonColor {
    return try await get(parameters: [("name", name)])
  }

  /// List `PokemonColor`'s.
  ///
  /// - Parameters:
  ///   - limit: ...
  ///   - offset: ...
  public func list(
    limit: Int,
    offset: Int
  ) async throws -> NamedAPIResourceList<PokemonColor> {
    return try await get(parameters: [
      ("limit", limit),
      ("offset", offset)
    ])
  }
}
