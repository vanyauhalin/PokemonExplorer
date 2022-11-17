/// Contest types are categories judges used to weigh a Pokémon's condition in
/// Pokémon contests. Check out
/// [Bulbapedia](http://bulbapedia.bulbagarden.net/wiki/Contest_condition)
/// for greater detail.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#contesttype).
public struct ContestType: Codable {
  /// The identifier for this resource.
  public let id: Int

  /// The name for this resource.
  public let name: String

  /// The berry flavor that correlates with this contest type.
  public let berryFlavor: NamedAPIResource<BerryFlavor>

  /// The name of this contest type listed in different languages.
  public let names: [ContestName]
}
