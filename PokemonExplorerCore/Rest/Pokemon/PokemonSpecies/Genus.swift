/// `Genus`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#genus).
public struct Genus: Codable {
  /// The localized genus for the referenced Pokémon species
  public let genus: String

  /// The language this genus is in.
  public let language: NamedAPIResource<Language>
}
