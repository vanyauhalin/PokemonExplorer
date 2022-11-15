/// Natures influence how a Pokémon's stats grow. See
/// [Bulbapedia](http://bulbapedia.bulbagarden.net/wiki/Nature) for greater
/// detail.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#nature).
struct Nature: Codable {
  enum CodingKeys: String, CodingKey {
    case id
    case name
    case decreasedStat = "decreased_stat"
    case increasedStat = "increased_stat"
    case hatesFlavor = "hates_flavor"
    case likesFlavor = "likes_flavor"
    case pokeathlonStatChanges = "pokeathlon_stat_changes"
    case moveBattleStylePreferences = "move_battle_style_preferences"
    case names
  }

  /// The identifier for this resource.
  let id: Int

  /// The name for this resource.
  let name: String

  /// The stat decreased by 10% in Pokémon with this nature.
  let decreasedStat: NamedAPIResource<Stat>

  /// The stat increased by 10% in Pokémon with this nature.
  let increasedStat: NamedAPIResource<Stat>

  /// The flavor hated by Pokémon with this nature.
  let hatesFlavor: NamedAPIResource<BerryFlavor>

  /// The flavor liked by Pokémon with this nature.
  let likesFlavor: NamedAPIResource<BerryFlavor>

  /// A list of Pokéathlon stats this nature effects and how much it effects
  /// them.
  let pokeathlonStatChanges: [NatureStatChange]

  /// A list of battle styles and how likely a Pokémon with this nature is to
  /// use them in the Battle Palace or Battle Tent.
  let moveBattleStylePreferences: [MoveBattleStylePreference]

  /// The name of this resource listed in different languages.
  let names: [Name]
}
