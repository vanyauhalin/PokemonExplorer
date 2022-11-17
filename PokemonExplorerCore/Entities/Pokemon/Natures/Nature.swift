/// Natures influence how a Pokémon's stats grow. See
/// [Bulbapedia](http://bulbapedia.bulbagarden.net/wiki/Nature) for greater
/// detail.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#nature).
public struct Nature: Codable {
  /// The identifier for this resource.
  public let id: Int

  /// The name for this resource.
  public let name: String

  /// The stat decreased by 10% in Pokémon with this nature.
  public let decreasedStat: NamedAPIResource<Stat>

  /// The stat increased by 10% in Pokémon with this nature.
  public let increasedStat: NamedAPIResource<Stat>

  /// The flavor hated by Pokémon with this nature.
  public let hatesFlavor: NamedAPIResource<BerryFlavor>

  /// The flavor liked by Pokémon with this nature.
  public let likesFlavor: NamedAPIResource<BerryFlavor>

  /// A list of Pokéathlon stats this nature effects and how much it effects
  /// them.
  public let pokeathlonStatChanges: [NatureStatChange]

  /// A list of battle styles and how likely a Pokémon with this nature is to
  /// use them in the Battle Palace or Battle Tent.
  public let moveBattleStylePreferences: [MoveBattleStylePreference]

  /// The name of this resource listed in different languages.
  public let names: [Name]
}
