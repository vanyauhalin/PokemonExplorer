/// `PokemonEntry`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#pokemonentry).
struct PokemonEntry: Codable {

    /// The index of this Pokémon species entry within the Pokédex.
    let entry_number: Int

    /// The Pokémon species being encountered.
    let pokemon_species: NamedAPIResource<PokemonSpecies>
}
