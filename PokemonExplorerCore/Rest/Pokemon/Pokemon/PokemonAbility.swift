/// `PokemonAbility`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#pokemonability).
public struct PokemonAbility: Codable {
  /// Whether or not this is a hidden ability.
  public let isHidden: Bool

  /// The slot this ability occupies in this Pokémon species.
  public let slot: Int

  /// The ability the Pokémon may have.
  public let ability: NamedAPIResource<Ability>
}
