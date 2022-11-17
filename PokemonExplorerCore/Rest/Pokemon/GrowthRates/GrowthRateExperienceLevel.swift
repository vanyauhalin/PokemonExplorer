/// `GrowthRateExperienceLevel`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#growthrateexperiencelevel).
public struct GrowthRateExperienceLevel: Codable {
  /// The level gained.
  public let level: Int

  /// The amount of experience required to reach the referenced level.
  public let experience: Int
}
