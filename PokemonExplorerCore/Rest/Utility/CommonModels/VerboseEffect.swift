/// `VerboseEffect`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#verboseeffect).
public struct VerboseEffect: Codable {
  /// The localized effect text for an API resource in a specific language.
  public let effect: String

  /// The localized effect text in brief.
  public let shortEffect: String

  /// The language this effect is in.
  public let language: NamedAPIResource<Language>
}
