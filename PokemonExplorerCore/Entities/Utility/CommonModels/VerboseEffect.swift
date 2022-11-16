/// `VerboseEffect`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#verboseeffect).
struct VerboseEffect: Codable {
  /// The localized effect text for an API resource in a specific language.
  let effect: String

  /// The localized effect text in brief.
  let shortEffect: String

  /// The language this effect is in.
  let language: NamedAPIResource<Language>
}
