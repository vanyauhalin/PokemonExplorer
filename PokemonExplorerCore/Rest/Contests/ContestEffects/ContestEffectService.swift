import Foundation

/// Service for interaction with `/contest-effect` endpoint.
public struct ContestEffectService: RestService {
  public let baseUrl = "https://pokeapi.co/api/v2"
  public let path = "/contest-effect/{id}/{limit,offset}"
  public let session: URLSession

  /// Get a `ContestEffect`.
  ///
  /// - Parameter id: `ContestEffect` identifier.
  public func get(_ id: Int) async throws -> ContestEffect {
    return try await get(parameters: [("id", id)])
  }

  /// List `ContestEffect`'s.
  ///
  /// - Parameters:
  ///   - limit: ...
  ///   - offset: ...
  public func list(
    limit: Int,
    offset: Int
  ) async throws -> NamedAPIResourceList<ContestEffect> {
    return try await get(parameters: [
      ("limit", limit),
      ("offset", offset)
    ])
  }
}
