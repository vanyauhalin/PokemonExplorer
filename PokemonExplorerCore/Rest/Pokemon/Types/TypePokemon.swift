/// `TypePokemon`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#typepokemon).
public struct TypePokemon: Codable {
  /// The order the Pokémon's types are listed in.
  public let slot: Int

  /// The Pokémon that has the referenced type.
  public let pokemon: NamedAPIResource<Pokemon>
}
