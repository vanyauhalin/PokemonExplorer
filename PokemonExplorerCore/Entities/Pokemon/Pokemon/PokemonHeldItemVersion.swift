/// `PokemonHeldItemVersion`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#pokemonhelditemversion).
struct PokemonHeldItemVersion: Codable {
  /// The version in which the item is held.
  let version: NamedAPIResource<Version>

  /// How often the item is held.
  let rarity: Int
}
