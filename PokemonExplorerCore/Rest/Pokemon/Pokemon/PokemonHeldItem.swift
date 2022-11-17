/// `PokemonHeldItem`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#pokemonhelditem).
public struct PokemonHeldItem: Codable {
  /// The item the referenced Pokémon holds.
  public let item: NamedAPIResource<Item>

  /// The details of the different versions in which the item is held.
  public let versionDetails: [PokemonHeldItemVersion]
}
