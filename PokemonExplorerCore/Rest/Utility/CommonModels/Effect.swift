/// `Effect`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#effect).
public struct Effect: Codable {
  /// The localized effect text for an API resource in a specific language.
  public let effect: String

  /// The language this effect is in.
  public let language: NamedAPIResource<Language>
}
