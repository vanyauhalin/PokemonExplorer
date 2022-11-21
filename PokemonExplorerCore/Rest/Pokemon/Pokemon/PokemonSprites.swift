import RealmSwift

/// `PokemonSprites`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#pokemonsprites).
public class PokemonSprites: Object, ObjectKeyIdentifiable, Codable {
  /// The default depiction of this Pokémon from the front in battle.
  @Persisted public var frontDefault: String

  /// The shiny depiction of this Pokémon from the front in battle.
  @Persisted public var frontShiny: String

  /// The female depiction of this Pokémon from the front in battle.
  @Persisted public var frontFemale: String?

  /// The shiny female depiction of this Pokémon from the front in battle.
  @Persisted public var frontShinyFemale: String?

  /// The default depiction of this Pokémon from the back in battle.
  @Persisted public var backDefault: String

  /// The shiny depiction of this Pokémon from the back in battle.
  @Persisted public var backShiny: String

  /// The female depiction of this Pokémon from the back in battle.
  @Persisted public var backFemale: String?

  /// The shiny female depiction of this Pokémon from the back in battle.
  @Persisted public var backShinyFemale: String?
}
