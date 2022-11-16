/// Egg Groups are categories which determine which Pokémon are able to
/// interbreed. Pokémon may belong to either one or two Egg Groups. Check out
/// [Bulbapedia](http://bulbapedia.bulbagarden.net/wiki/Egg_Group) for greater
/// detail.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#egggroup).
struct EggGroup: Codable {
  /// The identifier for this resource.
  let id: Int

  /// The name for this resource.
  let name: String

  /// The name of this resource listed in different languages.
  let names: [Name]

  /// A list of all Pokémon species that are members of this egg group.
  let pokemonSpecies: [NamedAPIResource<PokemonSpecies>]
}
