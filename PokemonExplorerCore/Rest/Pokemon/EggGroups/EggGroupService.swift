import Foundation

/// Service for interaction with `/egg-group` endpoint.
public struct EggGroupService: RestService {
  public let baseUrl = "https://pokeapi.co/api/v2"
  public let path = "/egg-group/{id,name}/{?limit,offset}"
  public let session: URLSession

  /// Get a `EggGroup`.
  ///
  /// - Parameter id: `EggGroup` identifier.
  public func get(_ id: Int) async throws -> EggGroup {
    return try await get(parameters: [("id", id)])
  }

  /// Get a `EggGroup`.
  ///
  /// - Parameter name: `EggGroup` name.
  public func get(_ name: String) async throws -> EggGroup {
    return try await get(parameters: [("name", name)])
  }

  /// List `EggGroup`'s.
  ///
  /// - Parameters:
  ///   - limit: ...
  ///   - offset: ...
  public func list(
    limit: Int,
    offset: Int
  ) async throws -> NamedAPIResourceList<EggGroup> {
    return try await get(parameters: [
      ("limit", limit),
      ("offset", offset)
    ])
  }
}
