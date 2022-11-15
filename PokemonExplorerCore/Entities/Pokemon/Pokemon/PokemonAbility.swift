/// `PokemonAbility`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#pokemonability).
struct PokemonAbility: Codable {
  enum CodingKeys: String, CodingKey {
    case isHidden = "is_hidden"
    case slot
    case ability
  }
  
  /// Whether or not this is a hidden ability.
  let isHidden: Bool
  
  /// The slot this ability occupies in this Pokémon species.
  let slot: Int
  
  /// The ability the Pokémon may have.
  let ability: NamedAPIResource<Ability>
}
