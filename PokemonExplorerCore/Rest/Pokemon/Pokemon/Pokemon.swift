import RealmSwift

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
public class Pokemon: Object, ObjectKeyIdentifiable, Codable {
  /// The identifier for this resource.
  @Persisted public var id: Int

  /// The name for this resource.
  @Persisted public var name: String

  /// The base experience gained for defeating this Pokémon.
  // public var baseExperience: Int

  /// The height of this Pokémon in decimetres.
  @Persisted public var height: Int

  /// Set for exactly one Pokémon used as the default for each species.
  // public var isDefault: Bool

  /// Order for sorting. Almost national order, except families are grouped
  /// together.
  // public var order: Int

  /// The weight of this Pokémon in hectograms.
  @Persisted public var weight: Int

  /// A list of abilities this Pokémon could potentially have.
  // public var abilities: [PokemonAbility]

  /// A list of forms this Pokémon can take on.
  // public var forms: [NamedAPIResource<PokemonForm>]

  /// A list of game indices relevent to Pokémon item by generation.
  // public var gameIndices: [VersionGameIndex]

  /// A list of items this Pokémon may be holding when encountered.
  // public var heldItems: [PokemonHeldItem]

  /// A link to a list of location areas, as well as encounter details
  /// pertaining to specific versions.
  // public var locationAreaEncounters: String

  /// A list of moves along with learn methods and level details pertaining to
  /// specific version groups.
  // public var moves: [PokemonMove]

  /// A list of details showing types this pokémon had in previous generations
  // public var pastTypes: [PokemonTypePast]

  /// A set of sprites used to depict this Pokémon in the game. A visual
  /// representation of the various sprites can be found at
  /// [PokeAPI/sprites](https://github.com/PokeAPI/sprites#sprites).
  // public var sprites: PokemonSprites?

  /// The species this Pokémon belongs to.
  // public var species: NamedAPIResource<PokemonSpecies>?

  /// A list of base stat values for this Pokémon.
  // public var stats: [PokemonStat]

  /// A list of details showing types this Pokémon has.
  // public var types: [PokemonType]
}
