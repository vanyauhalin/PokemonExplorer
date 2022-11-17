/// `NamedAPIResource`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#namedapiresource).
public struct NamedAPIResource<T>: Codable where T: Codable {
  /// The name of the referenced resource.
  public let name: String

  /// The URL of the referenced resource.
  public let url: String
}
