/// `Effect`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#effect).
struct Effect: Codable {
  /// The localized effect text for an API resource in a specific language.
  let effect: String

  /// The language this effect is in.
  let language: NamedAPIResource<Language>
}
