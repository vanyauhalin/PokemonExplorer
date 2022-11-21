/// `PokemonStat`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#pokemonstat).
public class PokemonStat: Codable {
  /// The stat the Pokémon has.
  public var stat: NamedAPIResource<Stat>?

  /// The effort points (EV) the Pokémon has in the stat.
  public var effort: Int

  /// The base value of the stat.
  public var baseStat: Int
}
