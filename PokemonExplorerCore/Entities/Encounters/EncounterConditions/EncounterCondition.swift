/// Conditions which affect what pokemon might appear in the wild, e.g., day or
/// night.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#encountercondition).
struct EncounterCondition: Codable {
  /// The identifier for this resource.
  let id: Int

  /// The name for this resource.
  let name: String

  /// The name of this resource listed in different languages.
  let names: [Name]

  /// A list of possible values for this encounter condition.
  let values: [NamedAPIResource<EncounterConditionValue>]
}
