/// `AbilityFlavorText`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#abilityflavortext).
public struct AbilityFlavorText: Codable {
  /// The localized name for an API resource in a specific language.
  public let flavorText: String

  /// The language this text resource is in.
  public let language: NamedAPIResource<Language>

  /// The version group that uses this flavor text.
  public let versionGroup: NamedAPIResource<VersionGroup>
}
