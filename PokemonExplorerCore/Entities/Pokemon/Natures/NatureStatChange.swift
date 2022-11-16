/// `NatureStatChange`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#naturestatchange).
struct NatureStatChange: Codable {
  /// The amount of change.
  let maxChange: Int

  /// The stat being affected.
  let pokeathlonStat: NamedAPIResource<PokeathlonStat>
}
