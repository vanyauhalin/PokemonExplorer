import Foundation

/// Service for interaction with `/region` endpoint.
public struct RegionService: RestService {
  public let baseUrl = "https://pokeapi.co/api/v2"
  public let path = "/region/{id,name}/{?limit,offset}"
  public let session: URLSession

  /// Get a `Region`.
  ///
  /// - Parameter id: `Region` identifier.
  public func get(_ id: Int) async throws -> Region {
    return try await get(parameters: [("id", id)])
  }

  /// Get a `Region`.
  ///
  /// - Parameter name: `Region` name.
  public func get(_ name: String) async throws -> Region {
    return try await get(parameters: [("name", name)])
  }

  /// List `Region`'s.
  ///
  /// - Parameters:
  ///   - limit: ...
  ///   - offset: ...
  public func list(
    limit: Int,
    offset: Int
  ) async throws -> NamedAPIResourceList<Region> {
    return try await get(parameters: [
      ("limit", limit),
      ("offset", offset)
    ])
  }
}
