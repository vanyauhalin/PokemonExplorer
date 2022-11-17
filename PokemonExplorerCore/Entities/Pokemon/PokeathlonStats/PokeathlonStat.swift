/// Pokeathlon Stats are different attributes of a Pokémon's performance in
/// Pokéathlons. In Pokéathlons, competitions happen on different courses; one
/// for each of the different Pokéathlon stats. See
/// [Bulbapedia](http://bulbapedia.bulbagarden.net/wiki/Pok%C3%A9athlon) for
/// greater detail.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#pokeathlonstat).
public struct PokeathlonStat: Codable {
  /// The identifier for this resource.
  public let id: Int

  /// The name for this resource.
  public let name: String

  /// The name of this resource listed in different languages.
  public let names: [Name]

  /// A detail of natures which affect this Pokéathlon stat positively or
  /// negatively.
  public let affectingNatures: NaturePokeathlonStatAffectSets
}
