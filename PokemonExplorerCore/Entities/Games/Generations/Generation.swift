/// A generation is a grouping of the Pokémon games that separates them based on
/// the Pokémon they include. In each generation, a new set of Pokémon, Moves,
/// Abilities and Types that did not exist in the previous generation are
/// released.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#generation).
struct Generation: Codable {
  /// The identifier for this resource.
  let id: Int

  /// The name for this resource.
  let name: String

  /// A list of abilities that were introduced in this generation.
  let abilities: [NamedAPIResource<Ability>]

  /// The name of this resource listed in different languages.
  let names: [Name]

  /// The main region travelled in this generation.
  let mainRegion: NamedAPIResource<Region>

  /// A list of moves that were introduced in this generation.
  let moves: [NamedAPIResource<Move>]

  /// A list of Pokémon species that were introduced in this generation.
  let pokemonSpecies: [NamedAPIResource<PokemonSpecies>]

  /// A list of types that were introduced in this generation.
  let types: [NamedAPIResource<PType>]

  /// A list of version groups that were introduced in this generation.
  let versionGroups: [NamedAPIResource<VersionGroup>]
}
