/// Methods by which the player might can encounter Pokémon in the wild, e.g.,
/// walking in tall grass. Check out
/// [Bulbapedia](http://bulbapedia.bulbagarden.net/wiki/Wild_Pok%C3%A9mon) for
/// greater detail.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#encountermethod).
public struct EncounterMethod: Codable {
  /// The identifier for this resource.
  public let id: Int

  /// The name for this resource.
  public let name: String

  /// A good value for sorting.
  public let order: Int

  /// The name of this resource listed in different languages.
  public let names: [Name]
}
