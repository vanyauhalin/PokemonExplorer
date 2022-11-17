/// Version groups categorize highly similar versions of the games.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#versiongroup).
public struct VersionGroup: Codable {
  /// The identifier for this resource.
  public let id: Int

  /// The name for this resource.
  public let name: String

  /// Order for sorting. Almost by date of release, except similar versions are
  /// grouped together.
  public let order: Int

  /// The generation this version was introduced in.
  public let generation: NamedAPIResource<Generation>

  /// A list of methods in which Pokémon can learn moves in this version group.
  public let moveLearnMethods: [NamedAPIResource<MoveLearnMethod>]

  /// A list of Pokédexes introduces in this version group.
  public let pokedexes: [NamedAPIResource<Pokedex>]

  /// A list of regions that can be visited in this version group.
  public let regions: [NamedAPIResource<Region>]

  /// The versions this version group owns.
  public let versions: [NamedAPIResource<Version>]
}
