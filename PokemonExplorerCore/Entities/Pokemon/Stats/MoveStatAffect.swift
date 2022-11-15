/// `MoveStatAffect`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#movestataffect).
struct MoveStatAffect: Codable {
  /// The maximum amount of change to the referenced stat.
  let change: Int

  /// The move causing the change.
  let move: NamedAPIResource<Move>
}
