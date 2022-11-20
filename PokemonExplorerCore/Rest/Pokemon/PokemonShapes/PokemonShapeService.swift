import Foundation

/// Service for interaction with `/pokemon-shape` endpoint.
public struct PokemonShapeService: RestService {
  public let baseUrl = "https://pokeapi.co/api/v2"
  public let path = "/pokemon-shape/{id,name}/{?limit,offset}"
  public let session: URLSession

  /// Get a `PokemonShape`.
  ///
  /// - Parameter id: `PokemonShape` identifier.
  public func get(_ id: Int) async throws -> PokemonShape {
    return try await get(parameters: [("id", id)])
  }

  /// Get a `PokemonShape`.
  ///
  /// - Parameter name: `PokemonShape` name.
  public func get(_ name: String) async throws -> PokemonShape {
    return try await get(parameters: [("name", name)])
  }

  /// List `PokemonShape`'s.
  ///
  /// - Parameters:
  ///   - limit: ...
  ///   - offset: ...
  public func list(
    limit: Int,
    offset: Int
  ) async throws -> NamedAPIResourceList<PokemonShape> {
    return try await get(parameters: [
      ("limit", limit),
      ("offset", offset)
    ])
  }
}
