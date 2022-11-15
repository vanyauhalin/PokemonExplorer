/// `ContestComboSets`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#contestcombosets).
struct ContestComboSets: Codable {

  /// A detail of moves this move can be used before or after, granting
  /// additional appeal points in contests.
  let normal: ContestComboDetail

  /// A detail of moves this move can be used before or after, granting
  /// additional appeal points in super contests.
  let `super`: ContestComboDetail
}
