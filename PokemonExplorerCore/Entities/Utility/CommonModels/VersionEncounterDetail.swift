/// `VersionEncounterDetail`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#versionencounterdetail).
struct VersionEncounterDetail: Codable {
  enum CodingKeys: String, CodingKey {
    case version
    case maxChance = "max_chance"
    case encounterDetails = "encounter_details"
  }

  /// The game version this encounter happens in.
  let version: NamedAPIResource<Version>

  /// The total percentage of all encounter potential.
  let maxChance: Int

  /// A list of encounters and their specifics.
  let encounterDetails: [Encounter]
}
