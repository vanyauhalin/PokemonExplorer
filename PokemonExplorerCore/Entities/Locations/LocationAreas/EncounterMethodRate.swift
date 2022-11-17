/// `EncounterMethodRate`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#encountermethodrate).
public struct EncounterMethodRate: Codable {
  /// The method in which Pokémon may be encountered in an area..
  public let encounterMethod: NamedAPIResource<EncounterMethod>

  /// The chance of the encounter to occur on a version of the game.
  public let versionDetails: [EncounterVersionDetails]
}
