/// `AwesomeName`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#awesomename).
struct AwesomeName: Codable {
  /// The localized "scientific" name for an API resource in a specific
  /// language.
  let awesomeName: String

  /// The language this "scientific" name is in.
  let language: NamedAPIResource<Language>
}
