/// Encounter condition values are the various states that an encounter
/// condition can have, i.e., time of day can be either day or night.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#encounterconditionvalue).
public struct EncounterConditionValue: Codable {
  /// The identifier for this resource.
  public let id: Int

  /// The name for this resource.
  public let name: String

  /// The condition this encounter condition value pertains to.
  public let condition: NamedAPIResource<EncounterCondition>

  /// The name of this resource listed in different languages.
  public let names: [Name]
}
