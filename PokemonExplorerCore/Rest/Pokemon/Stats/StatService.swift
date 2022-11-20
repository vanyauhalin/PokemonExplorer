import Foundation

/// Service for interaction with `/stat` endpoint.
public struct StatService: RestService {
  public let baseUrl = "https://pokeapi.co/api/v2"
  public let path = "/stat/{id,name}/{?limit,offset}"
  public let session: URLSession

  /// Get a `Stat`.
  ///
  /// - Parameter id: `Stat` identifier.
  public func get(_ id: Int) async throws -> Stat {
    return try await get(parameters: [("id", id)])
  }

  /// Get a `Stat`.
  ///
  /// - Parameter name: `Stat` name.
  public func get(_ name: String) async throws -> Stat {
    return try await get(parameters: [("name", name)])
  }

  /// List `Stat`'s.
  ///
  /// - Parameters:
  ///   - limit: ...
  ///   - offset: ...
  public func list(
    limit: Int,
    offset: Int
  ) async throws -> NamedAPIResourceList<Stat> {
    return try await get(parameters: [
      ("limit", limit),
      ("offset", offset)
    ])
  }
}
