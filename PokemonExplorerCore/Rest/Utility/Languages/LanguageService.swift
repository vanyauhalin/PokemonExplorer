import Foundation

/// Service for interaction with `/language` endpoint.
public struct LanguageService: RestService {
  public let baseUrl = "https://pokeapi.co/api/v2"
  public let path = "/language/{id,name}/{limit,offset}"
  public let session: URLSession

  /// Get a `Language`.
  ///
  /// - Parameter id: `Language` identifier.
  public func get(_ id: Int) async throws -> Language {
    return try await get(parameters: [("id", id)])
  }

  /// Get a `Language`.
  ///
  /// - Parameter name: `Language` name.
  public func get(_ name: String) async throws -> Language {
    return try await get(parameters: [("name", name)])
  }

  /// List `Language`'s.
  ///
  /// - Parameters:
  ///   - limit: ...
  ///   - offset: ...
  public func list(
    limit: Int,
    offset: Int
  ) async throws -> NamedAPIResourceList<Language> {
    return try await get(parameters: [
      ("limit", limit),
      ("offset", offset)
    ])
  }
}
