/// Contest effects refer to the effects of moves when used in contests.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#contesteffect).
public struct ContestEffect: Codable {
  /// The identifier for this resource.
  public let id: Int

  /// The base number of hearts the user of this move gets.
  public let appeal: Int

  /// The base number of hearts the user's opponent loses.
  public let jam: Int

  /// The result of this contest effect listed in different languages.
  public let effectEntries: [Effect]

  /// The flavor text of this contest effect listed in different languages.
  public let flavorTextEntries: [FlavorText]
}
