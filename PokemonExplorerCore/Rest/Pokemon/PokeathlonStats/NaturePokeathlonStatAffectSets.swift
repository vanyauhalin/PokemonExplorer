/// `NaturePokeathlonStatAffectSets`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#naturepokeathlonstataffectsets).
public struct NaturePokeathlonStatAffectSets: Codable {
  /// A list of natures and how they change the referenced Pokéathlon stat.
  public let increase: [NaturePokeathlonStatAffect]

  /// A list of natures and how they change the referenced Pokéathlon stat.
  public let decrease: [NaturePokeathlonStatAffect]
}
