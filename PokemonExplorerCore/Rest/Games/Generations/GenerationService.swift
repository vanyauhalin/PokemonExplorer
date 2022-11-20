import Foundation

/// Service for interaction with `/generation` endpoint.
public struct GenerationService: RestService {
  public let baseUrl = "https://pokeapi.co/api/v2"
  public let path = "/generation/{id,name}/{?limit,offset}"
  public let session: URLSession

  /// Get a `Generation`.
  ///
  /// - Parameter id: `Generation` identifier.
  public func get(_ id: Int) async throws -> Generation {
    return try await get(parameters: [("id", id)])
  }

  /// Get a `Generation`.
  ///
  /// - Parameter name: `Generation` name.
  public func get(_ name: String) async throws -> Generation {
    return try await get(parameters: [("name", name)])
  }

  /// List `Generation`'s.
  ///
  /// - Parameters:
  ///   - limit: ...
  ///   - offset: ...
  public func list(
    limit: Int,
    offset: Int
  ) async throws -> NamedAPIResourceList<Generation> {
    return try await get(parameters: [
      ("limit", limit),
      ("offset", offset)
    ])
  }
}
