/// `ItemHolderPokemonVersionDetail`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#itemholderpokemonversiondetail).
struct ItemHolderPokemonVersionDetail: Codable {
  /// How often this Pokémon holds this item in this version.
  let rarity: Int

  /// The version that this item is held in by the Pokémon.
  let version: NamedAPIResource<Version>
}
