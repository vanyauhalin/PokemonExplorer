import Foundation

/// Service for interaction with `/move-category` endpoint.
public struct MoveCategoryService: RestService {
  public let baseUrl = "https://pokeapi.co/api/v2"
  public let path = "/move-category/{id,name}/{limit,offset}"
  public let session: URLSession

  /// Get a `MoveCategory`.
  ///
  /// - Parameter id: `MoveCategory` identifier.
  public func get(_ id: Int) async throws -> MoveCategory {
    return try await get(parameters: [("id", id)])
  }

  /// Get a `MoveCategory`.
  ///
  /// - Parameter name: `MoveCategory` name.
  public func get(_ name: String) async throws -> MoveCategory {
    return try await get(parameters: [("name", name)])
  }

  /// List `MoveCategory`'s.
  ///
  /// - Parameters:
  ///   - limit: ...
  ///   - offset: ...
  public func list(
    limit: Int,
    offset: Int
  ) async throws -> NamedAPIResourceList<MoveCategory> {
    return try await get(parameters: [
      ("limit", limit),
      ("offset", offset)
    ])
  }
}
