/// `PokemonFormType`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#pokemonformtype).
struct PokemonFormType: Codable {
  /// The order the Pokémon's types are listed in.
  let slot: Int

  /// The type the referenced Form has.
  let type: NamedAPIResource<PType>
}
