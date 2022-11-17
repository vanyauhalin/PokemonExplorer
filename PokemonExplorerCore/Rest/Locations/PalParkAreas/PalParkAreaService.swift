import Foundation

/// Service for interaction with `/pal-park-area` endpoint.
public struct PalParkAreaService: RestService {
  public let baseUrl = "https://pokeapi.co/api/v2"
  public let path = "/pal-park-area/{id,name}/{limit,offset}"
  public let session: URLSession

  /// Get a `PalParkArea`.
  ///
  /// - Parameter id: `PalParkArea` identifier.
  public func get(_ id: Int) async throws -> PalParkArea {
    return try await get(parameters: [("id", id)])
  }

  /// Get a `PalParkArea`.
  ///
  /// - Parameter name: `PalParkArea` name.
  public func get(_ name: String) async throws -> PalParkArea {
    return try await get(parameters: [("name", name)])
  }

  /// List `PalParkArea`'s.
  ///
  /// - Parameters:
  ///   - limit: ...
  ///   - offset: ...
  public func list(
    limit: Int,
    offset: Int
  ) async throws -> NamedAPIResourceList<PalParkArea> {
    return try await get(parameters: [
      ("limit", limit),
      ("offset", offset)
    ])
  }
}
