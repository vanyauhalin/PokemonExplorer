/// `VersionGroupFlavorText`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#versiongroupflavortext).
public struct VersionGroupFlavorText: Codable {
  /// The localized name for an API resource in a specific language.
  public let text: String

  /// The language this name is in.
  public let language: NamedAPIResource<Language>

  /// The version group which uses this flavor text.
  public let versionGroup: NamedAPIResource<VersionGroup>
}
