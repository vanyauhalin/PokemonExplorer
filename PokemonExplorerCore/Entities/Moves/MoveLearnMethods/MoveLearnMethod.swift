/// Methods by which Pokémon can learn moves.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#movelearnmethod).
struct MoveLearnMethod: Codable {
  enum CodingKeys: String, CodingKey {
    case id
    case name
    case descriptions
    case names
    case versionGroups = "version_groups"
  }

  /// The identifier for this resource.
  let id: Int

  /// The name for this resource.
  let name: String

  /// The description of this resource listed in different languages.
  let descriptions: [Description]

  /// The name of this resource listed in different languages.
  let names: [Name]

  /// A list of version groups where moves can be learned through this method.
  let versionGroups: [NamedAPIResource<VersionGroup>]
}
