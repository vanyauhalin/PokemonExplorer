import Foundation

/// Service for interaction with `/contest-type` endpoint.
public struct ContestTypeService: RestService {
  public let baseUrl = "https://pokeapi.co/api/v2"
  public let path = "/contest-type/{id,name}/{?limit,offset}"
  public let session: URLSession

  /// Get a `ContestType`.
  ///
  /// - Parameter id: `ContestType` identifier.
  public func get(_ id: Int) async throws -> ContestType {
    return try await get(parameters: [("id", id)])
  }

  /// Get a `ContestType`.
  ///
  /// - Parameter name: `ContestType` name.
  public func get(_ name: String) async throws -> ContestType {
    return try await get(parameters: [("name", name)])
  }

  /// List `ContestType`'s.
  ///
  /// - Parameters:
  ///   - limit: ...
  ///   - offset: ...
  public func list(
    limit: Int,
    offset: Int
  ) async throws -> NamedAPIResourceList<ContestType> {
    return try await get(parameters: [
      ("limit", limit),
      ("offset", offset)
    ])
  }
}
