import Foundation

/// Service for interaction with `/pokemon` endpoint.
public struct PokemonService: RestService {
  public let baseUrl = "https://pokeapi.co/api/v2"
  public let path = "/pokemon/{id,name}/{?limit,offset}"
  public let session: URLSession

  /// Get a `Pokemon`.
  ///
  /// - Parameter id: `Pokemon` identifier.
  public func get(_ id: Int) async throws -> Pokemon {
    return try await get(parameters: [("id", id)])
  }

  /// Get a `Pokemon`.
  ///
  /// - Parameter name: `Pokemon` name.
  public func get(_ name: String) async throws -> Pokemon {
    return try await get(parameters: [("name", name)])
  }

  /// List `Pokemon`'s.
  ///
  /// - Parameters:
  ///   - limit: ...
  ///   - offset: ...
  public func list(
    limit: Int,
    offset: Int
  ) async throws -> NamedAPIResourceList<Pokemon> {
    return try await get(parameters: [
      ("limit", limit),
      ("offset", offset)
    ])
  }
}
