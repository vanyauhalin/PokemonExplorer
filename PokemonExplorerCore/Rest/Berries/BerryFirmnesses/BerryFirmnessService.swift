import Foundation

/// Service for interaction with `/berry-firmness` endpoint.
public struct BerryFirmnessService: RestService {
  public let baseUrl = "https://pokeapi.co/api/v2"
  public let path = "/berry-firmness/{id,name}/{?limit,offset}"
  public let session: URLSession

  /// Get a `BerryFirmness`.
  ///
  /// - Parameter id: `BerryFirmness` identifier.
  public func get(_ id: Int) async throws -> BerryFirmness {
    return try await get(parameters: [("id", id)])
  }

  /// Get a `BerryFirmness`.
  ///
  /// - Parameter name: `BerryFirmness` name.
  public func get(_ name: String) async throws -> BerryFirmness {
    return try await get(parameters: [("name", name)])
  }

  /// List `BerryFirmness`'s.
  ///
  /// - Parameters:
  ///   - limit: ...
  ///   - offset: ...
  public func list(
    limit: Int,
    offset: Int
  ) async throws -> NamedAPIResourceList<BerryFirmness> {
    return try await get(parameters: [
      ("limit", limit),
      ("offset", offset)
    ])
  }
}
