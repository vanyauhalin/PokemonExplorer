import Foundation

/// Service for interaction with `/item-pocket` endpoint.
public struct ItemPocketService: RestService {
  public let baseUrl = "https://pokeapi.co/api/v2"
  public let path = "/item-pocket/{id,name}/{?limit,offset}"
  public let session: URLSession

  /// Get a `ItemPocket`.
  ///
  /// - Parameter id: `ItemPocket` identifier.
  public func get(_ id: Int) async throws -> ItemPocket {
    return try await get(parameters: [("id", id)])
  }

  /// Get a `ItemPocket`.
  ///
  /// - Parameter name: `ItemPocket` name.
  public func get(_ name: String) async throws -> ItemPocket {
    return try await get(parameters: [("name", name)])
  }

  /// List `ItemPocket`'s.
  ///
  /// - Parameters:
  ///   - limit: ...
  ///   - offset: ...
  public func list(
    limit: Int,
    offset: Int
  ) async throws -> NamedAPIResourceList<ItemPocket> {
    return try await get(parameters: [
      ("limit", limit),
      ("offset", offset)
    ])
  }
}
