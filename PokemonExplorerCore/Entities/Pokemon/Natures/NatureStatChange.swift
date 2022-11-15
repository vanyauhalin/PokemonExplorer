/// `NatureStatChange`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#naturestatchange).
struct NatureStatChange: Codable {
  enum CodingKeys: String, CodingKey {
    case maxChange = "max_change"
    case pokeathlonStat = "pokeathlon_stat"
  }
  
  /// The amount of change.
  let maxChange: Int
  
  /// The stat being affected.
  let pokeathlonStat: NamedAPIResource<PokeathlonStat>
}
