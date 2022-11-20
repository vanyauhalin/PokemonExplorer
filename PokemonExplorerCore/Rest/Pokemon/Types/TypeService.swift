import Foundation

/// Service for interaction with `/type` endpoint.
public struct TypeService: RestService {
  public let baseUrl = "https://pokeapi.co/api/v2"
  public let path = "/type/{id,name}/{?limit,offset}"
  public let session: URLSession

  /// Get a `Type`.
  ///
  /// - Parameter id: `Type` identifier.
  public func get(_ id: Int) async throws -> PType {
    return try await get(parameters: [("id", id)])
  }

  /// Get a `Type`.
  ///
  /// - Parameter name: `Type` name.
  public func get(_ name: String) async throws -> PType {
    return try await get(parameters: [("name", name)])
  }

  /// List `Type`'s.
  ///
  /// - Parameters:
  ///   - limit: ...
  ///   - offset: ...
  public func list(
    limit: Int,
    offset: Int
  ) async throws -> NamedAPIResourceList<PType> {
    return try await get(parameters: [
      ("limit", limit),
      ("offset", offset)
    ])
  }
}
