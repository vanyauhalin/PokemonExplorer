/// `VersionEncounterDetail`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#versionencounterdetail).
public struct VersionEncounterDetail: Codable {
  /// The game version this encounter happens in.
  public let version: NamedAPIResource<Version>

  /// The total percentage of all encounter potential.
  public let maxChance: Int

  /// A list of encounters and their specifics.
  public let encounterDetails: [Encounter]
}
