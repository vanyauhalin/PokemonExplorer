/// `PokemonStat`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#pokemonstat).
public struct PokemonStat: Codable {
  /// The stat the Pokémon has.
  public let stat: NamedAPIResource<Stat>

  /// The effort points (EV) the Pokémon has in the stat.
  public let effort: Int

  /// The base value of the stat.
  public let baseStat: Int
}
