/// `EncounterVersionDetails`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#encounterversiondetails).
struct EncounterVersionDetails: Codable {
  /// The chance of an encounter to occur.
  let rate: Int

  /// The version of the game in which the encounter can occur with the given
  /// chance.
  let version: NamedAPIResource<Version>
}
