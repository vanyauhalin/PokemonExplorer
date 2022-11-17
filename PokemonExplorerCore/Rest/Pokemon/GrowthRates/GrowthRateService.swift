import Foundation

/// Service for interaction with `/growth-rate` endpoint.
public struct GrowthRateService: RestService {
  public let baseUrl = "https://pokeapi.co/api/v2"
  public let path = "/growth-rate/{id,name}/{limit,offset}"
  public let session: URLSession

  /// Get a `GrowthRate`.
  ///
  /// - Parameter id: `GrowthRate` identifier.
  public func get(_ id: Int) async throws -> GrowthRate {
    return try await get(parameters: [("id", id)])
  }

  /// Get a `GrowthRate`.
  ///
  /// - Parameter name: `GrowthRate` name.
  public func get(_ name: String) async throws -> GrowthRate {
    return try await get(parameters: [("name", name)])
  }

  /// List `GrowthRate`'s.
  ///
  /// - Parameters:
  ///   - limit: ...
  ///   - offset: ...
  public func list(
    limit: Int,
    offset: Int
  ) async throws -> NamedAPIResourceList<GrowthRate> {
    return try await get(parameters: [
      ("limit", limit),
      ("offset", offset)
    ])
  }
}
