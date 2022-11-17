import Foundation

/// Service for interaction with `/move-target` endpoint.
public struct MoveTargetService: RestService {
  public let baseUrl = "https://pokeapi.co/api/v2"
  public let path = "/move-target/{id,name}/{limit,offset}"
  public let session: URLSession

  /// Get a `MoveTarget`.
  ///
  /// - Parameter id: `MoveTarget` identifier.
  public func get(_ id: Int) async throws -> MoveTarget {
    return try await get(parameters: [("id", id)])
  }

  /// Get a `MoveTarget`.
  ///
  /// - Parameter name: `MoveTarget` name.
  public func get(_ name: String) async throws -> MoveTarget {
    return try await get(parameters: [("name", name)])
  }

  /// List `MoveTarget`'s.
  ///
  /// - Parameters:
  ///   - limit: ...
  ///   - offset: ...
  public func list(
    limit: Int,
    offset: Int
  ) async throws -> NamedAPIResourceList<MoveTarget> {
    return try await get(parameters: [
      ("limit", limit),
      ("offset", offset)
    ])
  }
}
