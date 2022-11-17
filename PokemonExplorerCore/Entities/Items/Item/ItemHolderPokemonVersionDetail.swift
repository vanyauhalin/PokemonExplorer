/// `ItemHolderPokemonVersionDetail`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#itemholderpokemonversiondetail).
public struct ItemHolderPokemonVersionDetail: Codable {
  /// How often this Pokémon holds this item in this version.
  public let rarity: Int

  /// The version that this item is held in by the Pokémon.
  public let version: NamedAPIResource<Version>
}
