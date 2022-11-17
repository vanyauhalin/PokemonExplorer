/// Flavors determine whether a Pokémon will benefit or suffer from eating a
/// berry based on their [nature](#natures). Check out
/// [Bulbapedia](http://bulbapedia.bulbagarden.net/wiki/Flavor) for greater
/// detail.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#berryflavor).
public struct BerryFlavor: Codable {
  /// The identifier for this resource.
  public let id: Int

  /// The name for this resource.
  public let name: String

  /// A list of the berries with this flavor.
  public let berries: [FlavorBerryMap]

  /// The contest type that correlates with this berry flavor.
  public let contestType: NamedAPIResource<ContestType>

  /// The name of this resource listed in different languages.
  public let names: [Name]
}
