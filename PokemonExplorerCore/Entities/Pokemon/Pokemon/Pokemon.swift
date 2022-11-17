/// Pokémon are the creatures that inhabit the world of the Pokémon games. They
/// can be caught using Pokéballs and trained by battling with other Pokémon.
/// Each Pokémon belongs to a specific species but may take on a variant which
/// makes it differ from other Pokémon of the same species, such as base stats,
/// available abilities and typings. See
/// [Bulbapedia](http://bulbapedia.bulbagarden.net/wiki/Pok%C3%A9mon_(species))
/// for greater detail.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#pokemon).
public struct Pokemon: Codable {
  /// The identifier for this resource.
  public let id: Int

  /// The name for this resource.
  public let name: String

  /// The base experience gained for defeating this Pokémon.
  public let baseExperience: Int

  /// The height of this Pokémon in decimetres.
  public let height: Int

  /// Set for exactly one Pokémon used as the default for each species.
  public let isDefault: Bool

  /// Order for sorting. Almost national order, except families are grouped
  /// together.
  public let order: Int

  /// The weight of this Pokémon in hectograms.
  public let weight: Int

  /// A list of abilities this Pokémon could potentially have.
  public let abilities: [PokemonAbility]

  /// A list of forms this Pokémon can take on.
  public let forms: [NamedAPIResource<PokemonForm>]

  /// A list of game indices relevent to Pokémon item by generation.
  public let gameIndices: [VersionGameIndex]

  /// A list of items this Pokémon may be holding when encountered.
  public let heldItems: [PokemonHeldItem]

  /// A link to a list of location areas, as well as encounter details
  /// pertaining to specific versions.
  public let locationAreaEncounters: String

  /// A list of moves along with learn methods and level details pertaining to
  /// specific version groups.
  public let moves: [PokemonMove]

  /// A list of details showing types this pokémon had in previous generations
  public let pastTypes: [PokemonTypePast]

  /// A set of sprites used to depict this Pokémon in the game. A visual
  /// representation of the various sprites can be found at
  /// [PokeAPI/sprites](https://github.com/PokeAPI/sprites#sprites).
  public let sprites: PokemonSprites

  /// The species this Pokémon belongs to.
  public let species: NamedAPIResource<PokemonSpecies>

  /// A list of base stat values for this Pokémon.
  public let stats: [PokemonStat]

  /// A list of details showing types this Pokémon has.
  public let types: [PokemonType]
}
