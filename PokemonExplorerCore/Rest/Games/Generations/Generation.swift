/// A generation is a grouping of the Pokémon games that separates them based on
/// the Pokémon they include. In each generation, a new set of Pokémon, Moves,
/// Abilities and Types that did not exist in the previous generation are
/// released.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#generation).
public struct Generation: Codable {
  /// The identifier for this resource.
  public let id: Int

  /// The name for this resource.
  public let name: String

  /// A list of abilities that were introduced in this generation.
  public let abilities: [NamedAPIResource<Ability>]

  /// The name of this resource listed in different languages.
  public let names: [Name]

  /// The main region travelled in this generation.
  public let mainRegion: NamedAPIResource<Region>

  /// A list of moves that were introduced in this generation.
  public let moves: [NamedAPIResource<Move>]

  /// A list of Pokémon species that were introduced in this generation.
  public let pokemonSpecies: [NamedAPIResource<PokemonSpecies>]

  /// A list of types that were introduced in this generation.
  public let types: [NamedAPIResource<PType>]

  /// A list of version groups that were introduced in this generation.
  public let versionGroups: [NamedAPIResource<VersionGroup>]
}
