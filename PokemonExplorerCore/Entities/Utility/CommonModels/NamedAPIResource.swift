/// `NamedAPIResource`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#namedapiresource).
struct NamedAPIResource<T>: Codable {
  enum CodingKeys: String, CodingKey {
    case name
    case url
  }

  /// The name of the referenced resource.
  let name: String

  /// The URL of the referenced resource.
  let url: String

  // init(from decoder: Decoder) throws {
  //   let container = try decoder.container(keyedBy: CodingKeys.self)
  //   self.name = try container.decode(String.self, forKey: .name)
  //   self.url = try container.decode(String.self, forKey: .url)
  // }
}
