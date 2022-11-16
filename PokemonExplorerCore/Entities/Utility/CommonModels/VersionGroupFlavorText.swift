/// `VersionGroupFlavorText`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#versiongroupflavortext).
struct VersionGroupFlavorText: Codable {
  /// The localized name for an API resource in a specific language.
  let text: String

  /// The language this name is in.
  let language: NamedAPIResource<Language>

  /// The version group which uses this flavor text.
  let versionGroup: NamedAPIResource<VersionGroup>
}
