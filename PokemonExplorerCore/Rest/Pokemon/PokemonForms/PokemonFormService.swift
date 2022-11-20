import Foundation

/// Service for interaction with `/pokemon-form` endpoint.
public struct PokemonFormService: RestService {
  public let baseUrl = "https://pokeapi.co/api/v2"
  public let path = "/pokemon-form/{id,name}/{?limit,offset}"
  public let session: URLSession

  /// Get a `PokemonForm`.
  ///
  /// - Parameter id: `PokemonForm` identifier.
  public func get(_ id: Int) async throws -> PokemonForm {
    return try await get(parameters: [("id", id)])
  }

  /// Get a `PokemonForm`.
  ///
  /// - Parameter name: `PokemonForm` name.
  public func get(_ name: String) async throws -> PokemonForm {
    return try await get(parameters: [("name", name)])
  }

  /// List `PokemonForm`'s.
  ///
  /// - Parameters:
  ///   - limit: ...
  ///   - offset: ...
  public func list(
    limit: Int,
    offset: Int
  ) async throws -> NamedAPIResourceList<PokemonForm> {
    return try await get(parameters: [
      ("limit", limit),
      ("offset", offset)
    ])
  }
}
