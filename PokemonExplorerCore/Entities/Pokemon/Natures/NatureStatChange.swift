/// `NatureStatChange`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#naturestatchange).
public struct NatureStatChange: Codable {
  /// The amount of change.
  public let maxChange: Int

  /// The stat being affected.
  public let pokeathlonStat: NamedAPIResource<PokeathlonStat>
}
