/// `PokemonType`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#pokemontype).
struct PokemonType: Codable {
  /// The order the Pokémon's types are listed in.
  let slot: Int

  /// The type the referenced Pokémon has.
  let type: NamedAPIResource<PType>
}
