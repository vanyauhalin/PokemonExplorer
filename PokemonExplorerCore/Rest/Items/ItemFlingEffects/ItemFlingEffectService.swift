import Foundation

/// Service for interaction with `/item-fling-effect` endpoint.
public struct ItemFlingEffectService: RestService {
  public let baseUrl = "https://pokeapi.co/api/v2"
  public let path = "/item-fling-effect/{id,name}/{limit,offset}"
  public let session: URLSession

  /// Get a `ItemFlingEffect`.
  ///
  /// - Parameter id: `ItemFlingEffect` identifier.
  public func get(_ id: Int) async throws -> ItemFlingEffect {
    return try await get(parameters: [("id", id)])
  }

  /// Get a `ItemFlingEffect`.
  ///
  /// - Parameter name: `ItemFlingEffect` name.
  public func get(_ name: String) async throws -> ItemFlingEffect {
    return try await get(parameters: [("name", name)])
  }

  /// List `ItemFlingEffect`'s.
  ///
  /// - Parameters:
  ///   - limit: ...
  ///   - offset: ...
  public func list(
    limit: Int,
    offset: Int
  ) async throws -> NamedAPIResourceList<ItemFlingEffect> {
    return try await get(parameters: [
      ("limit", limit),
      ("offset", offset)
    ])
  }
}
