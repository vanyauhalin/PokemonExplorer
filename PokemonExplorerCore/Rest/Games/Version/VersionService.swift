import Foundation

/// Service for interaction with `/version` endpoint.
public struct VersionService: RestService {
  public let baseUrl = "https://pokeapi.co/api/v2"
  public let path = "/version/{id,name}/{limit,offset}"
  public let session: URLSession

  /// Get a `Version`.
  ///
  /// - Parameter id: `Version` identifier.
  public func get(_ id: Int) async throws -> Version {
    return try await get(parameters: [("id", id)])
  }

  /// Get a `Version`.
  ///
  /// - Parameter name: `Version` name.
  public func get(_ name: String) async throws -> Version {
    return try await get(parameters: [("name", name)])
  }

  /// List `Version`'s.
  ///
  /// - Parameters:
  ///   - limit: ...
  ///   - offset: ...
  public func list(
    limit: Int,
    offset: Int
  ) async throws -> NamedAPIResourceList<Version> {
    return try await get(parameters: [
      ("limit", limit),
      ("offset", offset)
    ])
  }
}
