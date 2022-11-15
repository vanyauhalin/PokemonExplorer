/// `PokemonFormSprites`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#pokemonformsprites).
struct PokemonFormSprites: Codable {
  enum CodingKeys: String, CodingKey {
    case frontDefault = "front_default"
    case frontShiny = "front_shiny"
    case backDefault = "back_default"
    case backShiny = "back_shiny"
  }

  /// The default depiction of this Pokémon form from the front in battle.
  let frontDefault: String
  
  /// The shiny depiction of this Pokémon form from the front in battle.
  let frontShiny: String

  /// The default depiction of this Pokémon form from the back in battle.
  let backDefault: String

  /// The shiny depiction of this Pokémon form from the back in battle.
  let backShiny: String
}
