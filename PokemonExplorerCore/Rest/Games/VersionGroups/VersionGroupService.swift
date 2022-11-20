import Foundation

/// Service for interaction with `/version-group` endpoint.
public struct VersionGroupService: RestService {
  public let baseUrl = "https://pokeapi.co/api/v2"
  public let path = "/version-group/{id,name}/{?limit,offset}"
  public let session: URLSession

  /// Get a `VersionGroup`.
  ///
  /// - Parameter id: `VersionGroup` identifier.
  public func get(_ id: Int) async throws -> VersionGroup {
    return try await get(parameters: [("id", id)])
  }

  /// Get a `VersionGroup`.
  ///
  /// - Parameter name: `VersionGroup` name.
  public func get(_ name: String) async throws -> VersionGroup {
    return try await get(parameters: [("name", name)])
  }

  /// List `VersionGroup`'s.
  ///
  /// - Parameters:
  ///   - limit: ...
  ///   - offset: ...
  public func list(
    limit: Int,
    offset: Int
  ) async throws -> NamedAPIResourceList<VersionGroup> {
    return try await get(parameters: [
      ("limit", limit),
      ("offset", offset)
    ])
  }
}
