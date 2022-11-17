import Foundation

enum RestServiceDefaults {
  static var decoder: JSONDecoder {
    let decoder = JSONDecoder()
    decoder.keyDecodingStrategy = .convertFromSnakeCase
    return decoder
  }

  static func createUrl(baseUrl: String, path: String) throws -> URL {
    guard let url = URL(string: "\(baseUrl)\(path)") else {
      throw RestServiceError.invalidUrl
    }
    return url
  }

  static func createRequest(url: URL, httpMethod: HTTPMethod) -> URLRequest {
    var request = URLRequest(url: url)
    request.httpMethod = HTTPMethod.get.rawValue
    return request
  }
}
