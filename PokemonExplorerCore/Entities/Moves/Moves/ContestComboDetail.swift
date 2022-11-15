/// `ContestComboDetail`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#contestcombodetail).
struct ContestComboDetail: Codable {
  enum CodingKeys: String, CodingKey {
    case useBefore = "use_before"
    case useAfter = "use_after"
  }

  /// A list of moves to use before this move.
  let useBefore: [NamedAPIResource<Move>]

  /// A list of moves to use after this move.
  let useAfter: [NamedAPIResource<Move>]
}
