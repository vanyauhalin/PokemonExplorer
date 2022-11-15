/// Styles of moves when used in the Battle Palace. See
/// [Bulbapedia](http://bulbapedia.bulbagarden.net/wiki/Battle_Frontier_(Generation_III))
/// for greater detail.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#movebattlestyle).
struct MoveBattleStyle: Codable {
  /// The identifier for this resource.
  let id: Int

  /// The name for this resource.
  let name: String

  /// The name of this resource listed in different languages.
  let names: [Name]
}
