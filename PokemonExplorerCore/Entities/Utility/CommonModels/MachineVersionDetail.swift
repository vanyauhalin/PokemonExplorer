/// `MachineVersionDetail`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#machineversiondetail).
public struct MachineVersionDetail: Codable {
  /// The machine that teaches a move from an item.
  public let machine: APIResource<Machine>

  /// The version group of this specific machine.
  public let versionGroup: NamedAPIResource<VersionGroup>
}
