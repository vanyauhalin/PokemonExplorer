/// `VerboseEffect`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#verboseeffect).
struct VerboseEffect: Codable {
  enum CodingKeys: String, CodingKey {
    case effect
    case short_effect = "shortEffect"
    case language
  }

  /// The localized effect text for an API resource in a specific language.
  let effect: String

  /// The localized effect text in brief.
  let short_effect: String

  /// The language this effect is in.
  let language: NamedAPIResource<Language>
}
