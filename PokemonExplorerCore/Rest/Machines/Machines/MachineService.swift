import Foundation

/// Service for interaction with `/machine` endpoint.
public struct MachineService: RestService {
  public let baseUrl = "https://pokeapi.co/api/v2"
  public let path = "/machine/{id}/{?limit,offset}"
  public let session: URLSession

  /// Get a `Machine`.
  ///
  /// - Parameter id: `Machine` identifier.
  public func get(_ id: Int) async throws -> Machine {
    return try await get(parameters: [("id", id)])
  }

  /// List `Machine`'s.
  ///
  /// - Parameters:
  ///   - limit: ...
  ///   - offset: ...
  public func list(
    limit: Int,
    offset: Int
  ) async throws -> NamedAPIResourceList<Machine> {
    return try await get(parameters: [
      ("limit", limit),
      ("offset", offset)
    ])
  }
}
