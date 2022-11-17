import Foundation

/// Service for interaction with `/berry-flavor` endpoint.
public struct BerryFlavorService: RestService {
  public let baseUrl = "https://pokeapi.co/api/v2"
  public let path = "/berry-flavor/{id,name}/{limit,offset}"
  public let session: URLSession

  /// Get a `BerryFlavor`.
  ///
  /// - Parameter id: `BerryFlavor` identifier.
  public func get(_ id: Int) async throws -> BerryFlavor {
    return try await get(parameters: [("id", id)])
  }

  /// Get a `BerryFlavor`.
  ///
  /// - Parameter name: `BerryFlavor` name.
  public func get(_ name: String) async throws -> BerryFlavor {
    return try await get(parameters: [("name", name)])
  }

  /// List `BerryFlavor`'s.
  ///
  /// - Parameters:
  ///   - limit: ...
  ///   - offset: ...
  public func list(
    limit: Int,
    offset: Int
  ) async throws -> NamedAPIResourceList<BerryFlavor> {
    return try await get(parameters: [
      ("limit", limit),
      ("offset", offset)
    ])
  }
}
