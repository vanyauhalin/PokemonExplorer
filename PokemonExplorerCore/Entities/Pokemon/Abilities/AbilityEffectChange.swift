/// `AbilityEffectChange`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#abilityeffectchange).
struct AbilityEffectChange: Codable {
  enum CodingKeys: String, CodingKey {
    case effectEntries = "effect_entries"
    case versionGroup = "version_group"
  }

  /// The previous effect of this ability listed in different languages.
  let effectEntries: [Effect]

  /// The version group in which the previous effect of this ability originated.
  let versionGroup: NamedAPIResource<VersionGroup>
}
