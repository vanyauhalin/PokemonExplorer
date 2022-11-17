/// `EncounterVersionDetails`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#encounterversiondetails).
public struct EncounterVersionDetails: Codable {
  /// The chance of an encounter to occur.
  public let rate: Int

  /// The version of the game in which the encounter can occur with the given
  /// chance.
  public let version: NamedAPIResource<Version>
}
