/// Versions of the games, e.g., Red, Blue or Yellow.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#version).
public struct Version: Codable {
  /// The identifier for this resource.
  public let id: Int

  /// The name for this resource.
  public let name: String

  /// The name of this resource listed in different languages.
  public let names: [Name]

  /// The version group this version belongs to.
  public let versionGroup: NamedAPIResource<VersionGroup>
}
