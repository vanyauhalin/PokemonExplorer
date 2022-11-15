/// Machines are the representation of items that teach moves to Pokémon.
/// They vary from version to version, so it is not certain that one specific
/// TM or HM corresponds to a single Machine.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#machine).
struct Machine: Codable {
  enum CodingKeys: String, CodingKey {
    case id
    case item
    case move
    case versionGroup = "version_group"
  }

  /// The identifier for this resource.
  let id: Int

  /// The TM or HM item that corresponds to this machine.
  let item: NamedAPIResource<Item>

  /// The move that is taught by this machine.
  let move: NamedAPIResource<Move>

  /// The version group that this machine applies to.
  let versionGroup: NamedAPIResource<VersionGroup>
}
