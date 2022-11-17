/// Abilities provide passive effects for Pokémon in battle or in the overworld.
/// Pokémon have multiple possible abilities but can have only one ability at a
/// time. Check out [Bulbapedia](http://bulbapedia.bulbagarden.net/wiki/Ability)
/// for greater detail.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#ability).
public struct Ability: Codable {
  /// The identifier for this resource.
  public let id: Int

  /// The name for this resource.
  public let name: String

  /// Whether or not this ability originated in the main series of the video
  /// games.
  public let isMainSeries: Bool

  /// The generation this ability originated in.
  public let generation: NamedAPIResource<Generation>

  /// The name of this resource listed in different languages.
  public let names: [Name]

  /// The effect of this ability listed in different languages.
  public let effectEntries: [VerboseEffect]

  /// The list of previous effects this ability has had across version groups.
  public let effectChanges: [AbilityEffectChange]

  /// The flavor text of this ability listed in different languages.
  public let flavorTextEntries: [AbilityFlavorText]

  /// A list of Pokémon that could potentially have this ability.
  public let pokemon: [AbilityPokemon]
}
