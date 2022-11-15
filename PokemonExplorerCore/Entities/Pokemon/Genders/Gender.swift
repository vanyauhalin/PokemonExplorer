/// Genders were introduced in Generation II for the purposes of breeding
/// Pokémon but can also result in visual differences or even different
/// evolutionary lines. Check out
/// [Bulbapedia](http://bulbapedia.bulbagarden.net/wiki/Gender) for greater
/// detail.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#gender).
struct Gender: Codable {
  enum CodingKeys: String, CodingKey {
    case id
    case name
    case pokemonSpeciesDetails = "pokemon_species_details"
    case requiredForEvolution = "required_for_evolution"
  }

  /// The identifier for this resource.
  let id: Int

  /// The name for this resource.
  let name: String

  /// A list of Pokémon species that can be this gender and how likely it is
  /// that they will be.
  let pokemonSpeciesDetails: [PokemonSpeciesGender]

  /// A list of Pokémon species that required this gender in order for a Pokémon
  /// to evolve into them.
  let requiredForEvolution: [NamedAPIResource<PokemonSpecies>]
}
