import Foundation

/// Service for interaction with `/encounter-condition` endpoint.
public struct EncounterConditionService: RestService {
  public let baseUrl = "https://pokeapi.co/api/v2"
  public let path = "/encounter-condition/{id,name}/{?limit,offset}"
  public let session: URLSession

  /// Get a `EncounterCondition`.
  ///
  /// - Parameter id: `EncounterCondition` identifier.
  public func get(_ id: Int) async throws -> EncounterCondition {
    return try await get(parameters: [("id", id)])
  }

  /// Get a `EncounterCondition`.
  ///
  /// - Parameter name: `EncounterCondition` name.
  public func get(_ name: String) async throws -> EncounterCondition {
    return try await get(parameters: [("name", name)])
  }

  /// List `EncounterCondition`'s.
  ///
  /// - Parameters:
  ///   - limit: ...
  ///   - offset: ...
  public func list(
    limit: Int,
    offset: Int
  ) async throws -> NamedAPIResourceList<EncounterCondition> {
    return try await get(parameters: [
      ("limit", limit),
      ("offset", offset)
    ])
  }
}
