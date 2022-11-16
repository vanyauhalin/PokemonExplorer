/// `VersionEncounterDetail`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#versionencounterdetail).
struct VersionEncounterDetail: Codable {
  /// The game version this encounter happens in.
  let version: NamedAPIResource<Version>

  /// The total percentage of all encounter potential.
  let maxChance: Int

  /// A list of encounters and their specifics.
  let encounterDetails: [Encounter]
}
