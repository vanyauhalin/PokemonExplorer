/// `MoveBattleStylePreference`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#movebattlestylepreference).
struct MoveBattleStylePreference: Codable {
  /// Chance of using the move, in percent, if HP is under one half.
  let lowHpPreference: Int

  /// Chance of using the move, in percent, if HP is over one half.
  let highHpPreference: Int

  /// The move battle style.
  let moveBattleStyle: NamedAPIResource<MoveBattleStyle>
}
