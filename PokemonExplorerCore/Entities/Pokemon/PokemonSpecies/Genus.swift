/// `Genus`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#genus).
struct Genus: Codable {

  /// The localized genus for the referenced Pokémon species
  let genus: String

  /// The language this genus is in.
  let language: NamedAPIResource<Language>
}
