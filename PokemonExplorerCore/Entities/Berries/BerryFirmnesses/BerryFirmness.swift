/// Berries can be soft or hard. Check out
/// [Bulbapedia](http://bulbapedia.bulbagarden.net/wiki/Category:Berries_by_firmness)
/// for greater detail.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#berryfirmness).
struct BerryFirmness: Codable {
  /// The identifier for this resource.
  let id: Int

  /// The name for this resource.
  let name: String

  /// A list of the berries with this firmness.
  let berries: [NamedAPIResource<Berry>]

  /// The name of this resource listed in different languages.
  let names: [Name]
}
