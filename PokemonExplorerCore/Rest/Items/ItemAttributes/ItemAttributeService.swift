import Foundation

/// Service for interaction with `/item-attribute` endpoint.
public struct ItemAttributeService: RestService {
  public let baseUrl = "https://pokeapi.co/api/v2"
  public let path = "/item-attribute/{id,name}/{?limit,offset}"
  public let session: URLSession

  /// Get a `ItemAttribute`.
  ///
  /// - Parameter id: `ItemAttribute` identifier.
  public func get(_ id: Int) async throws -> ItemAttribute {
    return try await get(parameters: [("id", id)])
  }

  /// Get a `ItemAttribute`.
  ///
  /// - Parameter name: `ItemAttribute` name.
  public func get(_ name: String) async throws -> ItemAttribute {
    return try await get(parameters: [("name", name)])
  }

  /// List `ItemAttribute`'s.
  ///
  /// - Parameters:
  ///   - limit: ...
  ///   - offset: ...
  public func list(
    limit: Int,
    offset: Int
  ) async throws -> NamedAPIResourceList<ItemAttribute> {
    return try await get(parameters: [
      ("limit", limit),
      ("offset", offset)
    ])
  }
}
