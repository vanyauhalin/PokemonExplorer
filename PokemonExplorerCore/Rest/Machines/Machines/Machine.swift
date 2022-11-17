/// Machines are the representation of items that teach moves to Pokémon.
/// They vary from version to version, so it is not certain that one specific
/// TM or HM corresponds to a single Machine.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#machine).
public struct Machine: Codable {
  /// The identifier for this resource.
  public let id: Int

  /// The TM or HM item that corresponds to this machine.
  public let item: NamedAPIResource<Item>

  /// The move that is taught by this machine.
  public let move: NamedAPIResource<Move>

  /// The version group that this machine applies to.
  public let versionGroup: NamedAPIResource<VersionGroup>
}
