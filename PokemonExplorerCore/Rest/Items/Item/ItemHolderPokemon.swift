/// `ItemHolderPokemon`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#itemholderpokemon).
public struct ItemHolderPokemon: Codable {
  /// The Pokémon that holds this item.
  public let pokemon: NamedAPIResource<Pokemon>

  /// The details for the version that this item is held in by the Pokémon.
  public let versionDetails: [ItemHolderPokemonVersionDetail]
}
