import Foundation

/// Service for interaction with `/berry` endpoint.
public struct BerryService: RestService {
  public let baseUrl = "https://pokeapi.co/api/v2"
  public let path = "/berry/{id,name}/{?limit,offset}"
  public let session: URLSession

  /// Get a `Berry`.
  ///
  /// - Parameter id: `Berry` identifier.
  public func get(_ id: Int) async throws -> Berry {
    return try await get(parameters: [("id", id)])
  }

  /// Get a `Berry`.
  ///
  /// - Parameter name: `Berry` name.
  public func get(_ name: String) async throws -> Berry {
    return try await get(parameters: [("name", name)])
  }

  /// List `Berry`'s.
  ///
  /// - Parameters:
  ///   - limit: ...
  ///   - offset: ...
  public func list(
    limit: Int,
    offset: Int
  ) async throws -> NamedAPIResourceList<Berry> {
    return try await get(parameters: [
      ("limit", limit),
      ("offset", offset)
    ])
  }
}
