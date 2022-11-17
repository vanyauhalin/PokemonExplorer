import Foundation

/// Service for interaction with `/ability` endpoint.
public struct AbilityService: RestService {
  public let baseUrl = "https://pokeapi.co/api/v2"
  public let path = "/ability/{id,name}/{limit,offset}"
  public let session: URLSession

  /// Get a `Ability`.
  ///
  /// - Parameter id: `Ability` identifier.
  public func get(_ id: Int) async throws -> Ability {
    return try await get(parameters: [("id", id)])
  }

  /// Get a `Ability`.
  ///
  /// - Parameter name: `Ability` name.
  public func get(_ name: String) async throws -> Ability {
    return try await get(parameters: [("name", name)])
  }

  /// List `Ability`'s.
  ///
  /// - Parameters:
  ///   - limit: ...
  ///   - offset: ...
  public func list(
    limit: Int,
    offset: Int
  ) async throws -> NamedAPIResourceList<Ability> {
    return try await get(parameters: [
      ("limit", limit),
      ("offset", offset)
    ])
  }
}
