/// `PokemonStat`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#pokemonstat).
struct PokemonStat: Codable {
  /// The stat the Pokémon has.
  let stat: NamedAPIResource<Stat>

  /// The effort points (EV) the Pokémon has in the stat.
  let effort: Int

  /// The base value of the stat.
  let baseStat: Int
}
