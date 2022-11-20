import Foundation

/// Service for interaction with `/item` endpoint.
public struct ItemService: RestService {
  public let baseUrl = "https://pokeapi.co/api/v2"
  public let path = "/item/{id,name}/{?limit,offset}"
  public let session: URLSession

  /// Get a `Item`.
  ///
  /// - Parameter id: `Item` identifier.
  public func get(_ id: Int) async throws -> Item {
    return try await get(parameters: [("id", id)])
  }

  /// Get a `Item`.
  ///
  /// - Parameter name: `Item` name.
  public func get(_ name: String) async throws -> Item {
    return try await get(parameters: [("name", name)])
  }

  /// List `Item`'s.
  ///
  /// - Parameters:
  ///   - limit: ...
  ///   - offset: ...
  public func list(
    limit: Int,
    offset: Int
  ) async throws -> NamedAPIResourceList<Item> {
    return try await get(parameters: [
      ("limit", limit),
      ("offset", offset)
    ])
  }
}
