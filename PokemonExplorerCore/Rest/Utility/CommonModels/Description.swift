/// `Description`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#description).
public struct Description: Codable {
  /// The localized description for an API resource in a specific language.
  public let description: String

  /// The language this name is in.
  public let language: NamedAPIResource<Language>
}
