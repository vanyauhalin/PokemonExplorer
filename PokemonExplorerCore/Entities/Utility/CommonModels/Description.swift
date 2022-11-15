/// `Description`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#description).
struct Description: Codable {
  /// The localized description for an API resource in a specific language.
  let description: String

  /// The language this name is in.
  let language: NamedAPIResource<Language>
}
