/// Location areas are sections of areas, such as floors in a building or cave.
/// Each area has its own set of possible Pokémon encounters.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#locationarea).
struct LocationArea: Codable {
  enum CodingKeys: String, CodingKey {
    case id
    case name
    case gameIndex = "game_index"
    case encounterMethodRates = "encounter_method_rates"
    case location
    case names
    case pokemonEncounters = "pokemon_encounters"
  }

  /// The identifier for this resource.
  let id: Int

  /// The name for this resource.
  let name: String

  /// The internal id of an API resource within game data.
  let gameIndex: Int

  /// A list of methods in which Pokémon may be encountered in this area and how
  /// likely the method will occur depending on the version of the game.
  let encounterMethodRates: [EncounterMethodRate]

  /// The region this location area can be found in.
  let location: NamedAPIResource<Location>

  /// The name of this resource listed in different languages.
  let names: [Name]

  /// A list of Pokémon that can be encountered in this area along with version
  /// specific details about the encounter.
  let pokemonEncounters: [PokemonEncounter]
}
