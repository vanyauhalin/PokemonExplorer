/// `APIResource`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#apiresource).
struct APIResource<T>: Codable {
  enum CodingKeys: String, CodingKey {
    case url
  }

  /// The URL of the referenced resource.
  let url: String

  // init(from decoder: Decoder) throws {
  //   let container = try decoder.container(keyedBy: CodingKeys.self)
  //   self.url = try container.decode(String.self, forKey: .url)
  // }
}
