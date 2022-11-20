import Foundation

/// Service for interaction with `/encounter-condition-value` endpoint.
public struct EncounterConditionValueService: RestService {
  public let baseUrl = "https://pokeapi.co/api/v2"
  public let path = "/encounter-condition-value/{id,name}/{?limit,offset}"
  public let session: URLSession

  /// Get a `EncounterConditionValue`.
  ///
  /// - Parameter id: `EncounterConditionValue` identifier.
  public func get(_ id: Int) async throws -> EncounterConditionValue {
    return try await get(parameters: [("id", id)])
  }

  /// Get a `EncounterConditionValue`.
  ///
  /// - Parameter name: `EncounterConditionValue` name.
  public func get(_ name: String) async throws -> EncounterConditionValue {
    return try await get(parameters: [("name", name)])
  }

  /// List `EncounterConditionValue`'s.
  ///
  /// - Parameters:
  ///   - limit: ...
  ///   - offset: ...
  public func list(
    limit: Int,
    offset: Int
  ) async throws -> NamedAPIResourceList<EncounterConditionValue> {
    return try await get(parameters: [
      ("limit", limit),
      ("offset", offset)
    ])
  }
}
