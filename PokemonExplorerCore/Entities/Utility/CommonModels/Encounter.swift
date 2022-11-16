/// `Encounter`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#encounter).
struct Encounter: Codable {
  /// The lowest level the Pokémon could be encountered at.
  let minLevel: Int

  /// The highest level the Pokémon could be encountered at.
  let maxLevel: Int

  /// A list of condition values that must be in effect for this encounter to
  /// occur.
  let conditionValues: NamedAPIResource<EncounterConditionValue>

  /// Percent chance that this encounter will occur.
  let chance: Int

  /// The method by which this encounter happens.
  let method: NamedAPIResource<EncounterMethod>
}
