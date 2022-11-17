/// Super contest effects refer to the effects of moves when used in super
/// contests.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#supercontesteffect).
public struct SuperContestEffect: Codable {
  /// The identifier for this resource.
  public let id: Int

  /// The level of appeal this super contest effect has.
  public let appeal: Int

  /// The flavor text of this super contest effect listed in different
  /// languages.
  public let flavorTextEntries: [FlavorText]

  /// A list of moves that have the effect when used in super contests.
  public let moves: [NamedAPIResource<Move>]
}
