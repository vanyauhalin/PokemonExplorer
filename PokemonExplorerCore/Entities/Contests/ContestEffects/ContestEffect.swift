/// Contest effects refer to the effects of moves when used in contests.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#contesteffect).
struct ContestEffect: Codable {
  /// The identifier for this resource.
  let id: Int

  /// The base number of hearts the user of this move gets.
  let appeal: Int

  /// The base number of hearts the user's opponent loses.
  let jam: Int

  /// The result of this contest effect listed in different languages.
  let effectEntries: [Effect]

  /// The flavor text of this contest effect listed in different languages.
  let flavorTextEntries: [FlavorText]
}
