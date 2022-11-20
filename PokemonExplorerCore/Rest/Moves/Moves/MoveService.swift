import Foundation

/// Service for interaction with `/move` endpoint.
public struct MoveService: RestService {
  public let baseUrl = "https://pokeapi.co/api/v2"
  public let path = "/move/{id,name}/{?limit,offset}"
  public let session: URLSession

  /// Get a `Move`.
  ///
  /// - Parameter id: `Move` identifier.
  public func get(_ id: Int) async throws -> Move {
    return try await get(parameters: [("id", id)])
  }

  /// Get a `Move`.
  ///
  /// - Parameter name: `Move` name.
  public func get(_ name: String) async throws -> Move {
    return try await get(parameters: [("name", name)])
  }

  /// List `Move`'s.
  ///
  /// - Parameters:
  ///   - limit: ...
  ///   - offset: ...
  public func list(
    limit: Int,
    offset: Int
  ) async throws -> NamedAPIResourceList<Move> {
    return try await get(parameters: [
      ("limit", limit),
      ("offset", offset)
    ])
  }
}
