/// `AbilityPokemon`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#abilitypokemon).
struct AbilityPokemon: Codable {
  /// Whether or not this a hidden ability for the referenced Pokémon.
  let isHidden: Bool

  /// Pokémon have 3 ability 'slots' which hold references to possible abilities
  /// they could have. This is the slot of this ability for the referenced
  /// pokemon.
  let slot: Int

  /// The Pokémon this ability could belong to.
  let pokemon: NamedAPIResource<Pokemon>
}
