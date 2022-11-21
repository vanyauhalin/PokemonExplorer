/// `PokemonAbility`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#pokemonability).
public class PokemonAbility: Codable {
  /// Whether or not this is a hidden ability.
  public var isHidden: Bool

  /// The slot this ability occupies in this Pokémon species.
  public var slot: Int

  /// The ability the Pokémon may have.
  public var ability: NamedAPIResource<Ability>?
}
