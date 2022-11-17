/// Targets moves can be directed at during battle. Targets can be Pokémon,
/// environments or even other moves.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#movetarget).
public struct MoveTarget: Codable {
  /// The identifier for this resource.
  public let id: Int

  /// The name for this resource.
  public let name: String

  /// The description of this resource listed in different languages.
  public let descriptions: [Description]

  /// A list of moves that that are directed at this target.
  public let moves: [NamedAPIResource<Move>]

  /// The name of this resource listed in different languages.
  public let names: [Name]
}
