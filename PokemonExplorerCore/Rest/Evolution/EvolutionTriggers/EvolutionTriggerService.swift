import Foundation

/// Service for interaction with `/evolution-trigger` endpoint.
public struct EvolutionTriggerService: RestService {
  public let baseUrl = "https://pokeapi.co/api/v2"
  public let path = "/evolution-trigger/{id,name}/{?limit,offset}"
  public let session: URLSession

  /// Get a `EvolutionTrigger`.
  ///
  /// - Parameter id: `EvolutionTrigger` identifier.
  public func get(_ id: Int) async throws -> EvolutionTrigger {
    return try await get(parameters: [("id", id)])
  }

  /// Get a `EvolutionTrigger`.
  ///
  /// - Parameter name: `EvolutionTrigger` name.
  public func get(_ name: String) async throws -> EvolutionTrigger {
    return try await get(parameters: [("name", name)])
  }

  /// List `EvolutionTrigger`'s.
  ///
  /// - Parameters:
  ///   - limit: ...
  ///   - offset: ...
  public func list(
    limit: Int,
    offset: Int
  ) async throws -> NamedAPIResourceList<EvolutionTrigger> {
    return try await get(parameters: [
      ("limit", limit),
      ("offset", offset)
    ])
  }
}
