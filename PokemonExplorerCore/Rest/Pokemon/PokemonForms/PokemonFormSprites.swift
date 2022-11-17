/// `PokemonFormSprites`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#pokemonformsprites).
public struct PokemonFormSprites: Codable {
  /// The default depiction of this Pokémon form from the front in battle.
  public let frontDefault: String

  /// The shiny depiction of this Pokémon form from the front in battle.
  public let frontShiny: String

  /// The default depiction of this Pokémon form from the back in battle.
  public let backDefault: String

  /// The shiny depiction of this Pokémon form from the back in battle.
  public let backShiny: String
}
