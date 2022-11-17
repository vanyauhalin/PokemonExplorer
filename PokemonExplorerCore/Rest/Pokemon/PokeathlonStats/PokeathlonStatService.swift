import Foundation

/// Service for interaction with `/pokeathlon-stat` endpoint.
public struct PokeathlonStatService: RestService {
  public let baseUrl = "https://pokeapi.co/api/v2"
  public let path = "/pokeathlon-stat/{id,name}/{limit,offset}"
  public let session: URLSession

  /// Get a `PokeathlonStat`.
  ///
  /// - Parameter id: `PokeathlonStat` identifier.
  public func get(_ id: Int) async throws -> PokeathlonStat {
    return try await get(parameters: [("id", id)])
  }

  /// Get a `PokeathlonStat`.
  ///
  /// - Parameter name: `PokeathlonStat` name.
  public func get(_ name: String) async throws -> PokeathlonStat {
    return try await get(parameters: [("name", name)])
  }

  /// List `PokeathlonStat`'s.
  ///
  /// - Parameters:
  ///   - limit: ...
  ///   - offset: ...
  public func list(
    limit: Int,
    offset: Int
  ) async throws -> NamedAPIResourceList<PokeathlonStat> {
    return try await get(parameters: [
      ("limit", limit),
      ("offset", offset)
    ])
  }
}
