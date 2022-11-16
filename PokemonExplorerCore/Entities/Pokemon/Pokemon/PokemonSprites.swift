/// `PokemonSprites`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#pokemonsprites).
struct PokemonSprites: Codable {
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
