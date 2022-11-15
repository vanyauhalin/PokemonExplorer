/// Languages for translations of API resource information.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#languages).
struct Language: Codable {
  /// The identifier for this resource.
  let id: Int

  /// The name for this resource.
  let name: String

  /// Whether or not the games are published in this language.
  let official: Bool

  /// The two-letter code of the country where this language is spoken. Note that it is not unique.
  let iso639: String

  /// The two-letter code of the language. Note that it is not unique.
  let iso3166: String

  /// The name of this resource listed in different languages.
  let names: [Name]
}
