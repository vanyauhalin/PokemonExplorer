import Foundation

/// Service for interaction with `/nature` endpoint.
public struct NatureService: RestService {
  public let baseUrl = "https://pokeapi.co/api/v2"
  public let path = "/nature/{id,name}/{?limit,offset}"
  public let session: URLSession

  /// Get a `Nature`.
  ///
  /// - Parameter id: `Nature` identifier.
  public func get(_ id: Int) async throws -> Nature {
    return try await get(parameters: [("id", id)])
  }

  /// Get a `Nature`.
  ///
  /// - Parameter name: `Nature` name.
  public func get(_ name: String) async throws -> Nature {
    return try await get(parameters: [("name", name)])
  }

  /// List `Nature`'s.
  ///
  /// - Parameters:
  ///   - limit: ...
  ///   - offset: ...
  public func list(
    limit: Int,
    offset: Int
  ) async throws -> NamedAPIResourceList<Nature> {
    return try await get(parameters: [
      ("limit", limit),
      ("offset", offset)
    ])
  }
}
