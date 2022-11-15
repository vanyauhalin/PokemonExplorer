/// `MoveBattleStylePreference`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#movebattlestylepreference).
struct MoveBattleStylePreference: Codable {
  enum CodingKeys: String, CodingKey {
    case lowHpPreference = "low_hp_preference"
    case highHpPreference = "high_hp_preference"
    case moveBattleStyle = "move_battle_style"
  }
  
  /// Chance of using the move, in percent, if HP is under one half.
  let lowHpPreference: Int
  
  /// Chance of using the move, in percent, if HP is over one half.
  let highHpPreference: Int
  
  /// The move battle style.
  let moveBattleStyle: NamedAPIResource<MoveBattleStyle>
}
