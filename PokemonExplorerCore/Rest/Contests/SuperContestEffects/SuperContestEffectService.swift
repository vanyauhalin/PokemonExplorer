import Foundation

/// Service for interaction with `/super-contest-effect` endpoint.
public struct SuperContestEffectService: RestService {
  public let baseUrl = "https://pokeapi.co/api/v2"
  public let path = "/super-contest-effect/{id}/{limit,offset}"
  public let session: URLSession

  /// Get a `SuperContestEffect`.
  ///
  /// - Parameter id: `SuperContestEffect` identifier.
  public func get(_ id: Int) async throws -> SuperContestEffect {
    return try await get(parameters: [("id", id)])
  }

  /// List `SuperContestEffect`'s.
  ///
  /// - Parameters:
  ///   - limit: ...
  ///   - offset: ...
  public func list(
    limit: Int,
    offset: Int
  ) async throws -> NamedAPIResourceList<SuperContestEffect> {
    return try await get(parameters: [
      ("limit", limit),
      ("offset", offset)
    ])
  }
}
