/// `PokemonHeldItem`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#pokemonhelditem).
public class PokemonHeldItem: Codable {
  /// The item the referenced Pokémon holds.
  public var item: NamedAPIResource<Item>?

  /// The details of the different versions in which the item is held.
  public var versionDetails: [PokemonHeldItemVersion]
}
