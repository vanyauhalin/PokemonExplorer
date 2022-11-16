/// Methods by which Pokémon can learn moves.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#movelearnmethod).
struct MoveLearnMethod: Codable {
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
