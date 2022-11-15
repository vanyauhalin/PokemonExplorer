/// A Pokémon Species forms the basis for at least one Pokémon. Attributes of a
/// Pokémon species are shared across all varieties of Pokémon within the
/// species. A good example is Wormadam; Wormadam is the species which can be
/// found in three different varieties, Wormadam-Trash, Wormadam-Sandy and
/// Wormadam-Plant.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#pokemonspecies).
struct PokemonSpecies: Codable {
  enum CodingKeys: String, CodingKey {
    case id
    case name
    case order
    case genderRate = "gender_rate"
    case captureRate = "capture_rate"
    case baseHappiness = "base_happiness"
    case isBaby = "is_baby"
    case isLegendary = "is_legendary"
    case isMythical = "is_mythical"
    case hatchCounter = "hatch_counter"
    case hasGenderDifferences = "has_gender_differences"
    case formsSwitchable = "forms_switchable"
    case growthRate = "growth_rate"
    case pokedexNumbers = "pokedex_numbers"
    case eggGroups = "egg_groups"
    case color
    case shape
    case evolvesFromSpecies = "evolves_from_species"
    case evolutionChain = "evolution_chain"
    case habitat
    case generation
    case names
    case palParkEncounters = "pal_park_encounters"
    case flavorTextEntries = "flavor_text_entries"
    case formDescriptions = "form_descriptions"
    case genera
    case varieties
  }

  /// The identifier for this resource.
  let id: Int

  /// The name for this resource.
  let name: String

  /// The order in which species should be sorted. Based on National Dex order,
  /// except families are grouped together and sorted by stage.
  let order: Int

  /// The chance of this Pokémon being female, in eighths; or -1 for genderless.
  let genderRate: Int

  /// The base capture rate; up to 255. The higher the number, the easier the
  /// catch.
  let captureRate: Int

  /// The happiness when caught by a normal Pokéball; up to 255. The higher the
  /// number, the happier the Pokémon.
  let baseHappiness: Int

  /// Whether or not this is a baby Pokémon.
  let isBaby: Bool

  /// Whether or not this is a legendary Pokémon.
  let isLegendary: Bool

  /// Whether or not this is a mythical Pokémon.
  let isMythical: Bool

  /// Initial hatch counter: one must walk 255 × (hatch\_counter + 1) steps
  /// before this Pokémon's egg hatches, unless utilizing bonuses like Flame
  /// Body's.
  let hatchCounter: Int

  /// Whether or not this Pokémon has visual gender differences.
  let hasGenderDifferences: Bool

  /// Whether or not this Pokémon has multiple forms and can switch between
  /// them.
  let formsSwitchable: Bool

  /// The rate at which this Pokémon species gains levels.
  let growthRate: NamedAPIResource<GrowthRate>

  /// A list of Pokedexes and the indexes reserved within them for this Pokémon
  /// species.
  let pokedexNumbers: [PokemonSpeciesDexEntry]

  /// A list of egg groups this Pokémon species is a member of.
  let eggGroups: [NamedAPIResource<EggGroup>]

  /// The color of this Pokémon for Pokédex search.
  let color: NamedAPIResource<PokemonColor>

  /// The shape of this Pokémon for Pokédex search.
  let shape: NamedAPIResource<PokemonShape>

  /// The Pokémon species that evolves into this Pokemon\_species.
  let evolvesFromSpecies: NamedAPIResource<PokemonSpecies>

  /// The evolution chain this Pokémon species is a member of.
  let evolutionChain: APIResource<EvolutionChain>

  /// The habitat this Pokémon species can be encountered in.
  let habitat: NamedAPIResource<PokemonHabitat>

  /// The generation this Pokémon species was introduced in.
  let generation: NamedAPIResource<Generation>

  /// The name of this resource listed in different languages.
  let names: [Name]

  /// A list of encounters that can be had with this Pokémon species in pal
  /// park.
  let palParkEncounters: [PalParkEncounterArea]

  /// A list of flavor text entries for this Pokémon species.
  let flavorTextEntries: [FlavorText]

  /// Descriptions of different forms Pokémon take on within the Pokémon
  /// species.
  let formDescriptions: [Description]

  /// The genus of this Pokémon species listed in multiple languages.
  let genera: [Genus]

  /// A list of the Pokémon that exist within this Pokémon species.
  let varieties: [PokemonSpeciesVariety]
}
