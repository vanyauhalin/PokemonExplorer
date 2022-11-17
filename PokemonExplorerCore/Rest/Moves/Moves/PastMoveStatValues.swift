/// `PastMoveStatValues`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#pastmovestatvalues).
public struct PastMoveStatValues: Codable {
  /// The percent value of how likely this move is to be successful.
  public let accuracy: Int

  /// The percent value of how likely it is this moves effect will take effect.
  public let effectChance: Int

  /// The base power of this move with a value of 0 if it does not have a base
  /// power.
  public let power: Int

  /// Power points. The number of times this move can be used.
  public let pp: Int

  /// The effect of this move listed in different languages.
  public let effectEntries: [VerboseEffect]

  /// The elemental type of this move.
  public let type: NamedAPIResource<PType>

  /// The version group in which these move stat values were in effect.
  public let versionGroup: NamedAPIResource<VersionGroup>
}
