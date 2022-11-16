/// Flavors determine whether a Pokémon will benefit or suffer from eating a
/// berry based on their [nature](#natures). Check out
/// [Bulbapedia](http://bulbapedia.bulbagarden.net/wiki/Flavor) for greater
/// detail.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#berryflavor).
struct BerryFlavor: Codable {
  /// The identifier for this resource.
  let id: Int

  /// The name for this resource.
  let name: String

  /// A list of the berries with this flavor.
  let berries: [FlavorBerryMap]

  /// The contest type that correlates with this berry flavor.
  let contestType: NamedAPIResource<ContestType>

  /// The name of this resource listed in different languages.
  let names: [Name]
}
