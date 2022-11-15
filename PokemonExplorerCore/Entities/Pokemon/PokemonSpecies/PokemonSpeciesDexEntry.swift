/// `PokemonSpeciesDexEntry`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#pokemonspeciesdexentry).
struct PokemonSpeciesDexEntry: Codable {
  enum CodingKeys: String, CodingKey {
    case entryNumber = "entry_number"
    case pokedex
  }

  /// The index number within the Pokédex.
  let entryNumber: Int

  /// The Pokédex the referenced Pokémon species can be found in.
  let pokedex: NamedAPIResource<Pokedex>
}
