import Foundation

/// Service for interaction with `/location-area` endpoint.
public struct LocationAreaService: RestService {
  public let baseUrl = "https://pokeapi.co/api/v2"
  public let path = "/location-area/{id,name}/{limit,offset}"
  public let session: URLSession

  /// Get a `LocationArea`.
  ///
  /// - Parameter id: `LocationArea` identifier.
  public func get(_ id: Int) async throws -> LocationArea {
    return try await get(parameters: [("id", id)])
  }

  /// Get a `LocationArea`.
  ///
  /// - Parameter name: `LocationArea` name.
  public func get(_ name: String) async throws -> LocationArea {
    return try await get(parameters: [("name", name)])
  }

  /// List `LocationArea`'s.
  ///
  /// - Parameters:
  ///   - limit: ...
  ///   - offset: ...
  public func list(
    limit: Int,
    offset: Int
  ) async throws -> NamedAPIResourceList<LocationArea> {
    return try await get(parameters: [
      ("limit", limit),
      ("offset", offset)
    ])
  }
}
