/// Stats determine certain aspects of battles. Each Pokémon has a value for
/// each stat which grows as they gain levels and can be altered momentarily by
/// effects in battles.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#stat).
public struct Stat: Codable {
  /// The identifier for this resource.
  public let id: Int

  /// The name for this resource.
  public let name: String

  /// ID the games use for this stat.
  public let gameIndex: Int

  /// Whether this stat only exists within a battle.
  public let isBattleOnly: Bool

  /// A detail of moves which affect this stat positively or negatively.
  public let affectingMoves: MoveStatAffectSets

  /// A detail of natures which affect this stat positively or negatively.
  public let affectingNatures: NatureStatAffectSets

  /// A list of characteristics that are set on a Pokémon when its highest base
  /// stat is this stat.
  public let characteristics: [APIResource<Characteristic>]

  /// The class of damage this stat is directly related to.
  public let moveDamageClass: NamedAPIResource<MoveDamageClass>

  /// The name of this resource listed in different languages.
  public let names: [Name]
}
