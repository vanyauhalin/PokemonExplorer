import Foundation

/// Service for interaction with `/move-learn-method` endpoint.
public struct MoveLearnMethodService: RestService {
  public let baseUrl = "https://pokeapi.co/api/v2"
  public let path = "/move-learn-method/{id,name}/{limit,offset}"
  public let session: URLSession

  /// Get a `MoveLearnMethod`.
  ///
  /// - Parameter id: `MoveLearnMethod` identifier.
  public func get(_ id: Int) async throws -> MoveLearnMethod {
    return try await get(parameters: [("id", id)])
  }

  /// Get a `MoveLearnMethod`.
  ///
  /// - Parameter name: `MoveLearnMethod` name.
  public func get(_ name: String) async throws -> MoveLearnMethod {
    return try await get(parameters: [("name", name)])
  }

  /// List `MoveLearnMethod`'s.
  ///
  /// - Parameters:
  ///   - limit: ...
  ///   - offset: ...
  public func list(
    limit: Int,
    offset: Int
  ) async throws -> NamedAPIResourceList<MoveLearnMethod> {
    return try await get(parameters: [
      ("limit", limit),
      ("offset", offset)
    ])
  }
}
