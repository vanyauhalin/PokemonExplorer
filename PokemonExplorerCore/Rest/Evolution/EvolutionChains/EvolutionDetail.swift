/// `EvolutionDetail`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#evolutiondetail).
public struct EvolutionDetail: Codable {
  /// The item required to cause evolution this into Pokémon species.
  public let item: NamedAPIResource<Item>

  /// The type of event that triggers evolution into this Pokémon species.
  public let trigger: NamedAPIResource<EvolutionTrigger>

  /// The id of the gender of the evolving Pokémon species must be in order to
  /// evolve into this Pokémon species.
  public let gender: Int

  /// The item the evolving Pokémon species must be holding during the evolution
  /// trigger event to evolve into this Pokémon species.
  public let heldItem: NamedAPIResource<Item>

  /// The move that must be known by the evolving Pokémon species during the
  /// evolution trigger event in order to evolve into this Pokémon species.
  public let knownMove: NamedAPIResource<Move>

  /// The evolving Pokémon species must know a move with this type during the
  /// evolution trigger event in order to evolve into this Pokémon species.
  public let knownMoveType: NamedAPIResource<PType>

  /// The location the evolution must be triggered at.
  public let location: NamedAPIResource<Location>

  /// The minimum required level of the evolving Pokémon species to evolve into
  /// this Pokémon species.
  public let minLevel: Int

  /// The minimum required level of happiness the evolving Pokémon species to
  /// evolve into this Pokémon species.
  public let minHappiness: Int

  /// The minimum required level of beauty the evolving Pokémon species to
  /// evolve into this Pokémon species.
  public let minBeauty: Int

  /// The minimum required level of affection the evolving Pokémon species to
  /// evolve into this Pokémon species.
  public let minAffection: Int

  /// Whether or not it must be raining in the overworld to cause evolution this
  /// Pokémon species.
  public let needsOverworldRain: Bool

  /// The Pokémon species that must be in the players party in order for the
  /// evolving Pokémon species to evolve into this Pokémon species.
  public let partySpecies: NamedAPIResource<PokemonSpecies>

  /// The player must have a Pokémon of this type in their party during the
  /// evolution trigger event in order for the evolving Pokémon species to
  /// evolve into this Pokémon species.
  public let partyType: NamedAPIResource<PType>

  /// The required relation between the Pokémon's Attack and Defense stats. 1
  /// means Attack > Defense. 0 means Attack = Defense. -1 means Attack
  /// < Defense.
  public let relativePhysicalStats: Int

  /// The required time of day. Day or night.
  public let timeOfDay: String

  /// Pokémon species for which this one must be traded.
  public let tradeSpecies: NamedAPIResource<PokemonSpecies>

  /// Whether or not the 3DS needs to be turned upside-down as this Pokémon
  /// levels up.
  public let turnUpsideDown: Bool
}
