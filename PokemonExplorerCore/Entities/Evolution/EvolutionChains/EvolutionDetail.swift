/// `EvolutionDetail`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#evolutiondetail).
struct EvolutionDetail: Codable {
  /// The item required to cause evolution this into Pokémon species.
  let item: NamedAPIResource<Item>

  /// The type of event that triggers evolution into this Pokémon species.
  let trigger: NamedAPIResource<EvolutionTrigger>

  /// The id of the gender of the evolving Pokémon species must be in order to
  /// evolve into this Pokémon species.
  let gender: Int

  /// The item the evolving Pokémon species must be holding during the evolution
  /// trigger event to evolve into this Pokémon species.
  let heldItem: NamedAPIResource<Item>

  /// The move that must be known by the evolving Pokémon species during the
  /// evolution trigger event in order to evolve into this Pokémon species.
  let knownMove: NamedAPIResource<Move>

  /// The evolving Pokémon species must know a move with this type during the
  /// evolution trigger event in order to evolve into this Pokémon species.
  let knownMoveType: NamedAPIResource<PType>

  /// The location the evolution must be triggered at.
  let location: NamedAPIResource<Location>

  /// The minimum required level of the evolving Pokémon species to evolve into
  /// this Pokémon species.
  let minLevel: Int

  /// The minimum required level of happiness the evolving Pokémon species to
  /// evolve into this Pokémon species.
  let minHappiness: Int

  /// The minimum required level of beauty the evolving Pokémon species to
  /// evolve into this Pokémon species.
  let minBeauty: Int

  /// The minimum required level of affection the evolving Pokémon species to
  /// evolve into this Pokémon species.
  let minAffection: Int

  /// Whether or not it must be raining in the overworld to cause evolution this
  /// Pokémon species.
  let needsOverworldRain: Bool

  /// The Pokémon species that must be in the players party in order for the
  /// evolving Pokémon species to evolve into this Pokémon species.
  let partySpecies: NamedAPIResource<PokemonSpecies>

  /// The player must have a Pokémon of this type in their party during the
  /// evolution trigger event in order for the evolving Pokémon species to
  /// evolve into this Pokémon species.
  let partyType: NamedAPIResource<PType>

  /// The required relation between the Pokémon's Attack and Defense stats. 1
  /// means Attack > Defense. 0 means Attack = Defense. -1 means Attack
  /// < Defense.
  let relativePhysicalStats: Int

  /// The required time of day. Day or night.
  let timeOfDay: String

  /// Pokémon species for which this one must be traded.
  let tradeSpecies: NamedAPIResource<PokemonSpecies>

  /// Whether or not the 3DS needs to be turned upside-down as this Pokémon
  /// levels up.
  let turnUpsideDown: Bool
}
