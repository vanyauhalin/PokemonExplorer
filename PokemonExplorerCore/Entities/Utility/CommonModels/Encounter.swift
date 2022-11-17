/// `Encounter`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#encounter).
public struct Encounter: Codable {
  /// The lowest level the Pokémon could be encountered at.
  public let minLevel: Int

  /// The highest level the Pokémon could be encountered at.
  public let maxLevel: Int

  /// A list of condition values that must be in effect for this encounter to
  /// occur.
  public let conditionValues: NamedAPIResource<EncounterConditionValue>

  /// Percent chance that this encounter will occur.
  public let chance: Int

  /// The method by which this encounter happens.
  public let method: NamedAPIResource<EncounterMethod>
}
