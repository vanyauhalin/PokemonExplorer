/// Shapes used for sorting Pokémon in a Pokédex.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#pokemonshape).
struct PokemonShape: Codable {
  enum CodingKeys: String, CodingKey {
    case id
    case name
    case awesomeNames = "awesome_names"
    case names
    case pokemonSpecies = "pokemon_species"
  }

  /// The identifier for this resource.
  let id: Int

  /// The name for this resource.
  let name: String

  /// The "scientific" name of this Pokémon shape listed in different languages.
  let awesomeNames: [AwesomeName]

  /// The name of this resource listed in different languages.
  let names: [Name]

  /// A list of the Pokémon species that have this shape.
  let pokemonSpecies: [NamedAPIResource<PokemonSpecies>]
}
