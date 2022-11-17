/// `Name`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#name).
public struct Name: Codable {
  /// The localized name for an API resource in a specific language.
  public let name: String
  // /// The language this name is in.
  public let language: NamedAPIResource<Language>
}
