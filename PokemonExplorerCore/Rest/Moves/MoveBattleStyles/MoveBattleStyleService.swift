import Foundation

/// Service for interaction with `/move-battle-style` endpoint.
public struct MoveBattleStyleService: RestService {
  public let baseUrl = "https://pokeapi.co/api/v2"
  public let path = "/move-battle-style/{id,name}/{limit,offset}"
  public let session: URLSession

  /// Get a `MoveBattleStyle`.
  ///
  /// - Parameter id: `MoveBattleStyle` identifier.
  public func get(_ id: Int) async throws -> MoveBattleStyle {
    return try await get(parameters: [("id", id)])
  }

  /// Get a `MoveBattleStyle`.
  ///
  /// - Parameter name: `MoveBattleStyle` name.
  public func get(_ name: String) async throws -> MoveBattleStyle {
    return try await get(parameters: [("name", name)])
  }

  /// List `MoveBattleStyle`'s.
  ///
  /// - Parameters:
  ///   - limit: ...
  ///   - offset: ...
  public func list(
    limit: Int,
    offset: Int
  ) async throws -> NamedAPIResourceList<MoveBattleStyle> {
    return try await get(parameters: [
      ("limit", limit),
      ("offset", offset)
    ])
  }
}
