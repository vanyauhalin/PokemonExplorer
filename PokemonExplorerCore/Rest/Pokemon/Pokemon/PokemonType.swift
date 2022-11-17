/// `PokemonType`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#pokemontype).
public struct PokemonType: Codable {
  /// The order the Pokémon's types are listed in.
  public let slot: Int

  /// The type the referenced Pokémon has.
  public let type: NamedAPIResource<PType>
}
