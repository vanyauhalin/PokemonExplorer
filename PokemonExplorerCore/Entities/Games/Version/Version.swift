/// Versions of the games, e.g., Red, Blue or Yellow.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#version).
struct Version: Codable {
  enum CodingKeys: String, CodingKey {
    case id
    case name
    case names
    case versionGroup = "version_group"
  }

  /// The identifier for this resource.
  let id: Int

  /// The name for this resource.
  let name: String

  /// The name of this resource listed in different languages.
  let names: [Name]

  /// The version group this version belongs to.
  let versionGroup: NamedAPIResource<VersionGroup>
}
