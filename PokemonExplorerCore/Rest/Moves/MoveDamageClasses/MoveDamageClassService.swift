import Foundation

/// Service for interaction with `/move-damage-class` endpoint.
public struct MoveDamageClassService: RestService {
  public let baseUrl = "https://pokeapi.co/api/v2"
  public let path = "/move-damage-class/{id,name}/{limit,offset}"
  public let session: URLSession

  /// Get a `MoveDamageClass`.
  ///
  /// - Parameter id: `MoveDamageClass` identifier.
  public func get(_ id: Int) async throws -> MoveDamageClass {
    return try await get(parameters: [("id", id)])
  }

  /// Get a `MoveDamageClass`.
  ///
  /// - Parameter name: `MoveDamageClass` name.
  public func get(_ name: String) async throws -> MoveDamageClass {
    return try await get(parameters: [("name", name)])
  }

  /// List `MoveDamageClass`'s.
  ///
  /// - Parameters:
  ///   - limit: ...
  ///   - offset: ...
  public func list(
    limit: Int,
    offset: Int
  ) async throws -> NamedAPIResourceList<MoveDamageClass> {
    return try await get(parameters: [
      ("limit", limit),
      ("offset", offset)
    ])
  }
}
