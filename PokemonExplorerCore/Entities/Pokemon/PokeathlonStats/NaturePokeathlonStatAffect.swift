/// `NaturePokeathlonStatAffect`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#naturepokeathlonstataffect).
struct NaturePokeathlonStatAffect: Codable {
  /// The maximum amount of change to the referenced Pokéathlon stat.
  let maxChange: Int

  /// The nature causing the change.
  let nature: NamedAPIResource<Nature>
}
