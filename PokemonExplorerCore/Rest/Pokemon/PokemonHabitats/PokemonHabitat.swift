/// Habitats are generally different terrain Pokémon can be found in but can
/// also be areas designated for rare or legendary Pokémon.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#pokemonhabitat).
public struct PokemonHabitat: Codable {
  /// The identifier for this resource.
  public let id: Int

  /// The name for this resource.
  public let name: String

  /// The name of this resource listed in different languages.
  public let names: [Name]

  /// A list of the Pokémon species that can be found in this habitat.
  public let pokemonSpecies: [NamedAPIResource<PokemonSpecies>]
}
