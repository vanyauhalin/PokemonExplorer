/// Stats determine certain aspects of battles. Each Pokémon has a value for
/// each stat which grows as they gain levels and can be altered momentarily by
/// effects in battles.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#stat).
struct Stat: Codable {
  /// The identifier for this resource.
  let id: Int

  /// The name for this resource.
  let name: String

  /// ID the games use for this stat.
  let gameIndex: Int

  /// Whether this stat only exists within a battle.
  let isBattleOnly: Bool

  /// A detail of moves which affect this stat positively or negatively.
  let affectingMoves: MoveStatAffectSets

  /// A detail of natures which affect this stat positively or negatively.
  let affectingNatures: NatureStatAffectSets

  /// A list of characteristics that are set on a Pokémon when its highest base
  /// stat is this stat.
  let characteristics: [APIResource<Characteristic>]

  /// The class of damage this stat is directly related to.
  let moveDamageClass: NamedAPIResource<MoveDamageClass>

  /// The name of this resource listed in different languages.
  let names: [Name]
}
