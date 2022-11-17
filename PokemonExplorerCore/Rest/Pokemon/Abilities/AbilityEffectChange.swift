/// `AbilityEffectChange`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#abilityeffectchange).
public struct AbilityEffectChange: Codable {
  /// The previous effect of this ability listed in different languages.
  public let effectEntries: [Effect]

  /// The version group in which the previous effect of this ability originated.
  public let versionGroup: NamedAPIResource<VersionGroup>
}
