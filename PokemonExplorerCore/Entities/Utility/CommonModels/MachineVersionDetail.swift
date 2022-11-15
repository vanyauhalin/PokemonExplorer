/// `MachineVersionDetail`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#machineversiondetail).
struct MachineVersionDetail: Codable {
  enum CodingKeys: String, CodingKey {
    case machine
    case versionGroup = "version_group"
  }

  /// The machine that teaches a move from an item.
  let machine: APIResource<Machine>

  /// The version group of this specific machine.
  let versionGroup: NamedAPIResource<VersionGroup>
}
