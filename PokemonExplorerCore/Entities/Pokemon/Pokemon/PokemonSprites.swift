/// `PokemonSprites`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#pokemonsprites).
struct PokemonSprites: Codable {
  enum CodingKeys: String, CodingKey {
    case frontDefault = "front_default"
    case frontShiny = "front_shiny"
    case frontFemale = "front_female"
    case frontShinyFemale = "front_shiny_female"
    case backDefault = "back_default"
    case backShiny = "back_shiny"
    case backFemale = "back_female"
    case backShinyFemale = "back_shiny_female"
  }

  /// The default depiction of this Pokémon from the front in battle.
  let frontDefault: String

  /// The shiny depiction of this Pokémon from the front in battle.
  let frontShiny: String

  /// The female depiction of this Pokémon from the front in battle.
  let frontFemale: String

  /// The shiny female depiction of this Pokémon from the front in battle.
  let frontShinyFemale: String

  /// The default depiction of this Pokémon from the back in battle.
  let backDefault: String

  /// The shiny depiction of this Pokémon from the back in battle.
  let backShiny: String

  /// The female depiction of this Pokémon from the back in battle.
  let backFemale: String

  /// The shiny female depiction of this Pokémon from the back in battle.
  let backShinyFemale: String
}
