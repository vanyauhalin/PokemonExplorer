/// Egg Groups are categories which determine which Pokémon are able to
/// interbreed. Pokémon may belong to either one or two Egg Groups. Check out
/// [Bulbapedia](http://bulbapedia.bulbagarden.net/wiki/Egg_Group) for greater
/// detail.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#egggroup).
public struct EggGroup: Codable {
  /// The identifier for this resource.
  public let id: Int

  /// The name for this resource.
  public let name: String

  /// The name of this resource listed in different languages.
  public let names: [Name]

  /// A list of all Pokémon species that are members of this egg group.
  public let pokemonSpecies: [NamedAPIResource<PokemonSpecies>]
}
