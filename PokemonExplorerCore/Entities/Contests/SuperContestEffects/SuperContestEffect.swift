/// Super contest effects refer to the effects of moves when used in super
/// contests.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#supercontesteffect).
struct SuperContestEffect: Codable {
  /// The identifier for this resource.
  let id: Int

  /// The level of appeal this super contest effect has.
  let appeal: Int

  /// The flavor text of this super contest effect listed in different
  /// languages.
  let flavorTextEntries: [FlavorText]

  /// A list of moves that have the effect when used in super contests.
  let moves: [NamedAPIResource<Move>]
}
