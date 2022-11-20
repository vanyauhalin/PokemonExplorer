import Foundation

/// Service for interaction with `/characteristic` endpoint.
public struct CharacteristicService: RestService {
  public let baseUrl = "https://pokeapi.co/api/v2"
  public let path = "/characteristic/{id}/{?limit,offset}"
  public let session: URLSession

  /// Get a `Characteristic`.
  ///
  /// - Parameter id: `Characteristic` identifier.
  public func get(_ id: Int) async throws -> Characteristic {
    return try await get(parameters: [("id", id)])
  }

  /// List `Characteristic`'s.
  ///
  /// - Parameters:
  ///   - limit: ...
  ///   - offset: ...
  public func list(
    limit: Int,
    offset: Int
  ) async throws -> NamedAPIResourceList<Characteristic> {
    return try await get(parameters: [
      ("limit", limit),
      ("offset", offset)
    ])
  }
}
