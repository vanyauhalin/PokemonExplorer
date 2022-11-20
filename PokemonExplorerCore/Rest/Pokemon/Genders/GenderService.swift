import Foundation

/// Service for interaction with `/gender` endpoint.
public struct GenderService: RestService {
  public let baseUrl = "https://pokeapi.co/api/v2"
  public let path = "/gender/{id,name}/{?limit,offset}"
  public let session: URLSession

  /// Get a `Gender`.
  ///
  /// - Parameter id: `Gender` identifier.
  public func get(_ id: Int) async throws -> Gender {
    return try await get(parameters: [("id", id)])
  }

  /// Get a `Gender`.
  ///
  /// - Parameter name: `Gender` name.
  public func get(_ name: String) async throws -> Gender {
    return try await get(parameters: [("name", name)])
  }

  /// List `Gender`'s.
  ///
  /// - Parameters:
  ///   - limit: ...
  ///   - offset: ...
  public func list(
    limit: Int,
    offset: Int
  ) async throws -> NamedAPIResourceList<Gender> {
    return try await get(parameters: [
      ("limit", limit),
      ("offset", offset)
    ])
  }
}
