import Foundation

/// Service for interaction with `/evolution-chain` endpoint.
public struct EvolutionChainService: RestService {
  public let baseUrl = "https://pokeapi.co/api/v2"
  public let path = "/evolution-chain/{id}/{?limit,offset}"
  public let session: URLSession

  /// Get a `EvolutionChain`.
  ///
  /// - Parameter id: `EvolutionChain` identifier.
  public func get(_ id: Int) async throws -> EvolutionChain {
    return try await get(parameters: [("id", id)])
  }

  /// List `EvolutionChain`'s.
  ///
  /// - Parameters:
  ///   - limit: ...
  ///   - offset: ...
  public func list(
    limit: Int,
    offset: Int
  ) async throws -> NamedAPIResourceList<EvolutionChain> {
    return try await get(parameters: [
      ("limit", limit),
      ("offset", offset)
    ])
  }
}
