/// `NamedAPIResource`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#namedapiresource).
struct NamedAPIResource<T>: Codable {
  /// The name of the referenced resource.
  let name: String

  /// The URL of the referenced resource.
  let url: String
}
