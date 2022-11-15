/// Version groups categorize highly similar versions of the games.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#versiongroup).
struct VersionGroup: Codable {
  enum CodingKeys: String, CodingKey {
    case id
    case name
    case order
    case generation
    case moveLearnMethods = "move_learn_methods"
    case pokedexes
    case regions
    case versions
  }

  /// The identifier for this resource.
  let id: Int

  /// The name for this resource.
  let name: String

  /// Order for sorting. Almost by date of release, except similar versions are
  /// grouped together.
  let order: Int

  /// The generation this version was introduced in.
  let generation: NamedAPIResource<Generation>

  /// A list of methods in which Pokémon can learn moves in this version group.
  let moveLearnMethods: [NamedAPIResource<MoveLearnMethod>]

  /// A list of Pokédexes introduces in this version group.
  let pokedexes: [NamedAPIResource<Pokedex>]

  /// A list of regions that can be visited in this version group.
  let regions: [NamedAPIResource<Region>]

  /// The versions this version group owns.
  let versions: [NamedAPIResource<Version>]
}
