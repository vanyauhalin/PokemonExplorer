import Foundation

/// Service for interaction with `/encounter-method` endpoint.
public struct EncounterMethodService: RestService {
  public let baseUrl = "https://pokeapi.co/api/v2"
  public let path = "/encounter-method/{id,name}/{limit,offset}"
  public let session: URLSession

  /// Get a `EncounterMethod`.
  ///
  /// - Parameter id: `EncounterMethod` identifier.
  public func get(_ id: Int) async throws -> EncounterMethod {
    return try await get(parameters: [("id", id)])
  }

  /// Get a `EncounterMethod`.
  ///
  /// - Parameter name: `EncounterMethod` name.
  public func get(_ name: String) async throws -> EncounterMethod {
    return try await get(parameters: [("name", name)])
  }

  /// List `EncounterMethod`'s.
  ///
  /// - Parameters:
  ///   - limit: ...
  ///   - offset: ...
  public func list(
    limit: Int,
    offset: Int
  ) async throws -> NamedAPIResourceList<EncounterMethod> {
    return try await get(parameters: [
      ("limit", limit),
      ("offset", offset)
    ])
  }
}
