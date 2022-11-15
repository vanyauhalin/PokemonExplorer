/// `PokemonHeldItem`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#pokemonhelditem).
struct PokemonHeldItem: Codable {
  enum CodingKeys: String, CodingKey {
    case item
    case versionDetails = "version_details"
  }

  /// The item the referenced Pokémon holds.
  let item: NamedAPIResource<Item>

  /// The details of the different versions in which the item is held.
  let versionDetails: [PokemonHeldItemVersion]
}
