import Foundation

public struct SpritesService: RestService {
  public let baseUrl = "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites"
  public let path = "/pokemon/{id}/.png"
  public let session: URLSession

  public func get(_ id: Int) async throws -> Data {
    return try await get(parameters: [("id", id)], mediaType: .png)
  }
}
