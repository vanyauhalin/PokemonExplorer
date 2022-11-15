/// Abilities provide passive effects for Pokémon in battle or in the overworld.
/// Pokémon have multiple possible abilities but can have only one ability at a
/// time. Check out [Bulbapedia](http://bulbapedia.bulbagarden.net/wiki/Ability)
/// for greater detail.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#ability).
struct Ability: Codable {
  enum CodingKeys: String, CodingKey {
    case id
    case name
    case isMainSeries = "is_main_series"
    case generation
    case names
    case effectEntries = "effect_entries"
    case effectChanges = "effect_changes"
    case flavorTextEntries = "flavor_text_entries"
    case pokemon
  }

  /// The identifier for this resource.
  let id: Int

  /// The name for this resource.
  let name: String

  /// Whether or not this ability originated in the main series of the video
  /// games.
  let isMainSeries: Bool

  /// The generation this ability originated in.
  let generation: NamedAPIResource<Generation>

  /// The name of this resource listed in different languages.
  let names: [Name]

  /// The effect of this ability listed in different languages.
  let effectEntries: [VerboseEffect]

  /// The list of previous effects this ability has had across version groups.
  let effectChanges: [AbilityEffectChange]

  /// The flavor text of this ability listed in different languages.
  let flavorTextEntries: [AbilityFlavorText]

  /// A list of Pokémon that could potentially have this ability.
  let pokemon: [AbilityPokemon]
}
