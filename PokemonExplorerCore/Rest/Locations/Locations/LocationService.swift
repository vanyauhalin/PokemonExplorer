import Foundation

/// Service for interaction with `/location` endpoint.
public struct LocationService: RestService {
  public let baseUrl = "https://pokeapi.co/api/v2"
  public let path = "/location/{id,name}/{?limit,offset}"
  public let session: URLSession

  /// Get a `Location`.
  ///
  /// - Parameter id: `Location` identifier.
  public func get(_ id: Int) async throws -> Location {
    return try await get(parameters: [("id", id)])
  }

  /// Get a `Location`.
  ///
  /// - Parameter name: `Location` name.
  public func get(_ name: String) async throws -> Location {
    return try await get(parameters: [("name", name)])
  }

  /// List `Location`'s.
  ///
  /// - Parameters:
  ///   - limit: ...
  ///   - offset: ...
  public func list(
    limit: Int,
    offset: Int
  ) async throws -> NamedAPIResourceList<Location> {
    return try await get(parameters: [
      ("limit", limit),
      ("offset", offset)
    ])
  }
}
