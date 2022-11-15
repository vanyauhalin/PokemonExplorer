/// `MoveStatAffectSets`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#movestataffectsets).
struct MoveStatAffectSets: Codable {
  /// A list of moves and how they change the referenced stat.
  let increase: [MoveStatAffect]

  /// A list of moves and how they change the referenced stat.
  let decrease: [MoveStatAffect]
}
