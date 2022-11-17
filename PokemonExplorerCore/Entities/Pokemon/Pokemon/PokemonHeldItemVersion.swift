/// `PokemonHeldItemVersion`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#pokemonhelditemversion).
public struct PokemonHeldItemVersion: Codable {
  /// The version in which the item is held.
  public let version: NamedAPIResource<Version>

  /// How often the item is held.
  public let rarity: Int
}
