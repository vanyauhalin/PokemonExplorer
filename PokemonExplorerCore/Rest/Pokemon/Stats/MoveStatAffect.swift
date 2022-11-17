/// `MoveStatAffect`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#movestataffect).
public struct MoveStatAffect: Codable {
  /// The maximum amount of change to the referenced stat.
  public let change: Int

  /// The move causing the change.
  public let move: NamedAPIResource<Move>
}
