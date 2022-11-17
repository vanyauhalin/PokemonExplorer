import Foundation

public protocol RestService {
  var baseUrl: String { get }
  var path: String { get }
  var session: URLSession { get }
}

extension RestService {
  func get<Entity, ParameterValue>(
    parameters: RestEndpoint.Parameters<ParameterValue>
  ) async throws -> Entity
  where Entity: Codable {
    let endpoint = RestEndpoint.apply(parameters: parameters, to: path)
    let url = try RestServiceDefaults.createUrl(
      baseUrl: baseUrl,
      path: endpoint
    )
    let request = RestServiceDefaults.createRequest(url: url, httpMethod: .get)
    let (data, _) = try await session.data(for: request)
    return try RestServiceDefaults.decoder.decode(Entity.self, from: data)
  }
}
