/// `GrowthRateExperienceLevel`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#growthrateexperiencelevel).
struct GrowthRateExperienceLevel: Codable {
  /// The level gained.
  let level: Int

  /// The amount of experience required to reach the referenced level.
  let experience: Int
}
