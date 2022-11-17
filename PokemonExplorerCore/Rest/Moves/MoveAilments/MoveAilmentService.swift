import Foundation

/// Service for interaction with `/move-ailment` endpoint.
public struct MoveAilmentService: RestService {
  public let baseUrl = "https://pokeapi.co/api/v2"
  public let path = "/move-ailment/{id,name}/{limit,offset}"
  public let session: URLSession

  /// Get a `MoveAilment`.
  ///
  /// - Parameter id: `MoveAilment` identifier.
  public func get(_ id: Int) async throws -> MoveAilment {
    return try await get(parameters: [("id", id)])
  }

  /// Get a `MoveAilment`.
  ///
  /// - Parameter name: `MoveAilment` name.
  public func get(_ name: String) async throws -> MoveAilment {
    return try await get(parameters: [("name", name)])
  }

  /// List `MoveAilment`'s.
  ///
  /// - Parameters:
  ///   - limit: ...
  ///   - offset: ...
  public func list(
    limit: Int,
    offset: Int
  ) async throws -> NamedAPIResourceList<MoveAilment> {
    return try await get(parameters: [
      ("limit", limit),
      ("offset", offset)
    ])
  }
}
