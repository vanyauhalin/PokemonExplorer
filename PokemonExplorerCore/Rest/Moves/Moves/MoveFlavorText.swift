/// `MoveFlavorText`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#moveflavortext).
public struct MoveFlavorText: Codable {
  /// The localized flavor text for an api resource in a specific language.
  public let flavorText: String

  /// The language this name is in.
  public let language: NamedAPIResource<Language>

  /// The version group that uses this flavor text.
  public let versionGroup: NamedAPIResource<VersionGroup>
}
