/// `PokemonSprites`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#pokemonsprites).
public struct PokemonSprites: Codable {
  /// The default depiction of this Pokémon from the front in battle.
  public let frontDefault: String

  /// The shiny depiction of this Pokémon from the front in battle.
  public let frontShiny: String

  /// The female depiction of this Pokémon from the front in battle.
  public let frontFemale: String

  /// The shiny female depiction of this Pokémon from the front in battle.
  public let frontShinyFemale: String

  /// The default depiction of this Pokémon from the back in battle.
  public let backDefault: String

  /// The shiny depiction of this Pokémon from the back in battle.
  public let backShiny: String

  /// The female depiction of this Pokémon from the back in battle.
  public let backFemale: String

  /// The shiny female depiction of this Pokémon from the back in battle.
  public let backShinyFemale: String
}
