/// Location areas are sections of areas, such as floors in a building or cave.
/// Each area has its own set of possible Pokémon encounters.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#locationarea).
public struct LocationArea: Codable {
  /// The identifier for this resource.
  public let id: Int

  /// The name for this resource.
  public let name: String

  /// The internal id of an API resource within game data.
  public let gameIndex: Int

  /// A list of methods in which Pokémon may be encountered in this area and how
  /// likely the method will occur depending on the version of the game.
  public let encounterMethodRates: [EncounterMethodRate]

  /// The region this location area can be found in.
  public let location: NamedAPIResource<Location>

  /// The name of this resource listed in different languages.
  public let names: [Name]

  /// A list of Pokémon that can be encountered in this area along with version
  /// specific details about the encounter.
  public let pokemonEncounters: [PokemonEncounter]
}
