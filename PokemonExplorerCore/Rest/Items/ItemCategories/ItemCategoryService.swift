import Foundation

/// Service for interaction with `/item-category` endpoint.
public struct ItemCategoryService: RestService {
  public let baseUrl = "https://pokeapi.co/api/v2"
  public let path = "/item-category/{id,name}/{limit,offset}"
  public let session: URLSession

  /// Get a `ItemCategory`.
  ///
  /// - Parameter id: `ItemCategory` identifier.
  public func get(_ id: Int) async throws -> ItemCategory {
    return try await get(parameters: [("id", id)])
  }

  /// Get a `ItemCategory`.
  ///
  /// - Parameter name: `ItemCategory` name.
  public func get(_ name: String) async throws -> ItemCategory {
    return try await get(parameters: [("name", name)])
  }

  /// List `ItemCategory`'s.
  ///
  /// - Parameters:
  ///   - limit: ...
  ///   - offset: ...
  public func list(
    limit: Int,
    offset: Int
  ) async throws -> NamedAPIResourceList<ItemCategory> {
    return try await get(parameters: [
      ("limit", limit),
      ("offset", offset)
    ])
  }
}
