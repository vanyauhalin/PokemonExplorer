import Foundation

/// Service for interaction with `/pokedex` endpoint.
public struct PokedexService: RestService {
  public let baseUrl = "https://pokeapi.co/api/v2"
  public let path = "/pokedex/{id,name}/{limit,offset}"
  public let session: URLSession

  /// Get a `Pokedex`.
  ///
  /// - Parameter id: `Pokedex` identifier.
  public func get(_ id: Int) async throws -> Pokedex {
    return try await get(parameters: [("id", id)])
  }

  /// Get a `Pokedex`.
  ///
  /// - Parameter name: `Pokedex` name.
  public func get(_ name: String) async throws -> Pokedex {
    return try await get(parameters: [("name", name)])
  }

  /// List `Pokedex`'s.
  ///
  /// - Parameters:
  ///   - limit: ...
  ///   - offset: ...
  public func list(
    limit: Int,
    offset: Int
  ) async throws -> NamedAPIResourceList<Pokedex> {
    return try await get(parameters: [
      ("limit", limit),
      ("offset", offset)
    ])
  }
}
