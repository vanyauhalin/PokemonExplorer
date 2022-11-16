/// `EncounterMethodRate`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#encountermethodrate).
struct EncounterMethodRate: Codable {
  /// The method in which Pokémon may be encountered in an area..
  let encounterMethod: NamedAPIResource<EncounterMethod>

  /// The chance of the encounter to occur on a version of the game.
  let versionDetails: [EncounterVersionDetails]
}
