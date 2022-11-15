/// `MoveFlavorText`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#moveflavortext).
struct MoveFlavorText: Codable {
  enum CodingKeys: String, CodingKey {
    case flavorText = "flavor_text"
    case language
    case versionGroup = "version_group"
  }

  /// The localized flavor text for an api resource in a specific language.
  let flavorText: String
  
  /// The language this name is in.
  let language: NamedAPIResource<Language>

  /// The version group that uses this flavor text.
  let versionGroup: NamedAPIResource<VersionGroup>
}
