/// `Name`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#name).
struct Name: Codable {
  /// The localized name for an API resource in a specific language.
  let name: String
  // /// The language this name is in.
  let language: NamedAPIResource<Language>
}
