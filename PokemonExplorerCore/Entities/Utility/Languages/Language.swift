/// Languages for translations of API resource information.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#languages).
public struct Language: Codable {
  /// The identifier for this resource.
  public let id: Int

  /// The name for this resource.
  public let name: String

  /// Whether or not the games are published in this language.
  public let official: Bool

  /// The two-public letter code of the country where this language is spoken. Note that it is not unique.
  public let iso639: String

  /// The two-public letter code of the language. Note that it is not unique.
  public let iso3166: String

  /// The name of this resource listed in different languages.
  public let names: [Name]
}
