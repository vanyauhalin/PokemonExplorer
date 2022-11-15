/// `ItemHolderPokemon`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#itemholderpokemon).
struct ItemHolderPokemon: Codable {
  enum CodingKeys: String, CodingKey {
    case pokemon
    case versionDetails = "version_details"
  }
  
  /// The Pokémon that holds this item.
  let pokemon: NamedAPIResource<Pokemon>

  /// The details for the version that this item is held in by the Pokémon.
  let versionDetails: [ItemHolderPokemonVersionDetail]
}
