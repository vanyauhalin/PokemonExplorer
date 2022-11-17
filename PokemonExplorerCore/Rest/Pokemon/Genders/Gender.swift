/// Genders were introduced in Generation II for the purposes of breeding
/// Pokémon but can also result in visual differences or even different
/// evolutionary lines. Check out
/// [Bulbapedia](http://bulbapedia.bulbagarden.net/wiki/Gender) for greater
/// detail.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#gender).
public struct Gender: Codable {
  /// The identifier for this resource.
  public let id: Int

  /// The name for this resource.
  public let name: String

  /// A list of Pokémon species that can be this gender and how likely it is
  /// that they will be.
  public let pokemonSpeciesDetails: [PokemonSpeciesGender]

  /// A list of Pokémon species that required this gender in order for a Pokémon
  /// to evolve into them.
  public let requiredForEvolution: [NamedAPIResource<PokemonSpecies>]
}
