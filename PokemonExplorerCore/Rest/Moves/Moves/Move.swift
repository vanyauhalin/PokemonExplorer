/// Moves are the skills of Pokémon in battle. In battle, a Pokémon uses one
/// move each turn. Some moves (including those learned by Hidden Machine) can
/// be used outside of battle as well, usually for the purpose of removing
/// obstacles or exploring new areas.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#move).
public struct Move: Codable {
  /// The identifier for this resource.
  public let id: Int

  /// The name for this resource.
  public let name: String

  /// The percent value of how likely this move is to be successful.
  public let accuracy: Int

  /// The percent value of how likely it is this moves effect will happen.
  public let effectChance: Int

  /// Power points. The number of times this move can be used.
  public let pp: Int

  /// A value between -8 and 8. Sets the order in which moves are executed
  /// during battle. See
  /// [Bulbapedia](http://bulbapedia.bulbagarden.net/wiki/Priority) for greater
  /// detail.
  public let priority: Int

  /// The base power of this move with a value of 0 if it does not have a base
  /// power.
  public let power: Int

  /// A detail of normal and super contest combos that require this move.
  public let contestCombos: ContestComboSets

  /// The type of appeal this move gives a Pokémon when used in a contest.
  public let contestType: NamedAPIResource<ContestType>

  /// The effect the move has when used in a contest.
  public let contestEffect: APIResource<ContestEffect>

  /// The type of damage the move inflicts on the target, e.g. physical.
  public let damageClass: NamedAPIResource<MoveDamageClass>

  /// The effect of this move listed in different languages.
  public let effectEntries: [VerboseEffect]

  /// The list of previous effects this move has had across version groups of
  /// the games.
  public let effectChanges: [AbilityEffectChange]

  /// List of Pokemon that can learn the move
  public let learnedByPokemon: [NamedAPIResource<Pokemon>]

  /// The flavor text of this move listed in different languages.
  public let flavorTextEntries: [MoveFlavorText]

  /// The generation in which this move was introduced.
  public let generation: NamedAPIResource<Generation>

  /// A list of the machines that teach this move.
  public let machines: [MachineVersionDetail]

  /// Metadata about this move
  public let meta: MoveMetaData

  /// The name of this resource listed in different languages.
  public let names: [Name]

  /// A list of move resource value changes across version groups of the game.
  public let pastValues: [PastMoveStatValues]

  /// A list of stats this moves effects and how much it effects them.
  public let statChanges: [MoveStatChange]

  /// The effect the move has when used in a super contest.
  public let superContestEffect: APIResource <SuperContestEffect>

  /// The type of target that will receive the effects of the attack.
  public let target: NamedAPIResource<MoveTarget>

  /// The elemental type of this move.
  public let type: NamedAPIResource<PType>
}
