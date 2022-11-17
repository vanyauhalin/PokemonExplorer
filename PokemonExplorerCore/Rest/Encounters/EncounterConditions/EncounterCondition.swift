/// Conditions which affect what pokemon might appear in the wild, e.g., day or
/// night.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#encountercondition).
public struct EncounterCondition: Codable {
  /// The identifier for this resource.
  public let id: Int

  /// The name for this resource.
  public let name: String

  /// The name of this resource listed in different languages.
  public let names: [Name]

  /// A list of possible values for this encounter condition.
  public let values: [NamedAPIResource<EncounterConditionValue>]
}
