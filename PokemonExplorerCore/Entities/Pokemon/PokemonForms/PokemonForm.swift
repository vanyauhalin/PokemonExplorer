/// Some Pokémon may appear in one of multiple, visually different forms. These
/// differences are purely cosmetic. For variations within a Pokémon species,
/// which do differ in more than just visuals, the 'Pokémon' entity is used to
/// represent such a variety.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#pokemonform).
struct PokemonForm: Codable {
  enum CodingKeys: String, CodingKey {
    case id
    case name
    case order
    case formOrder = "form_order"
    case isDefault = "is_default"
    case isBattleOnly = "is_battle_only"
    case isMega = "is_mega"
    case formName = "form_name"
    case pokemon
    case types
    case sprites
    case versionGroup = "version_group"
    case names
    case formNames = "form_names"
  }

  /// The identifier for this resource.
  let id: Int

  /// The name for this resource.
  let name: String

  /// The order in which forms should be sorted within all forms. Multiple forms
  /// may have equal order, in which case they should fall back on sorting by
  /// name.
  let order: Int

  /// The order in which forms should be sorted within a species' forms.
  let formOrder: Int

  /// True for exactly one form used as the default for each Pokémon.
  let isDefault: Bool

  /// Whether or not this form can only happen during battle.
  let isBattleOnly: Bool

  /// Whether or not this form requires mega evolution.
  let isMega: Bool

  /// The name of this form.
  let formName: String

  /// The Pokémon that can take on this form.
  let pokemon: NamedAPIResource<Pokemon>

  /// A list of details showing types this Pokémon form has.
  let types: [PokemonFormType]

  /// A set of sprites used to depict this Pokémon form in the game.
  let sprites: PokemonFormSprites

  /// The version group this Pokémon form was introduced in.
  let versionGroup: NamedAPIResource<VersionGroup>

  /// The form specific full name of this Pokémon form, or empty if the form
  /// does not have a specific name.
  let names: [Name]

  /// The form specific form name of this Pokémon form, or empty if the form
  /// does not have a specific name.
  let formNames: [Name]
}
