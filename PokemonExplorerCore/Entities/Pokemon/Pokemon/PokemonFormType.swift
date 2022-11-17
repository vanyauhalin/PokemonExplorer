/// `PokemonFormType`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#pokemonformtype).
public struct PokemonFormType: Codable {
  /// The order the Pokémon's types are listed in.
  public let slot: Int

  /// The type the referenced Form has.
  public let type: NamedAPIResource<PType>
}
