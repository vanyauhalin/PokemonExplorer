/// `NaturePokeathlonStatAffectSets`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#naturepokeathlonstataffectsets).
struct NaturePokeathlonStatAffectSets: Codable {
  /// A list of natures and how they change the referenced Pokéathlon stat.
  let increase: [NaturePokeathlonStatAffect]

  /// A list of natures and how they change the referenced Pokéathlon stat.
  let decrease: [NaturePokeathlonStatAffect]
}
