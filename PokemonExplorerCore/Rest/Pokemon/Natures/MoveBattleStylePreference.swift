/// `MoveBattleStylePreference`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#movebattlestylepreference).
public struct MoveBattleStylePreference: Codable {
  /// Chance of using the move, in percent, if HP is under one half.
  public let lowHpPreference: Int

  /// Chance of using the move, in percent, if HP is over one half.
  public let highHpPreference: Int

  /// The move battle style.
  public let moveBattleStyle: NamedAPIResource<MoveBattleStyle>
}
