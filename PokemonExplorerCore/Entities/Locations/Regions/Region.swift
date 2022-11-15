/// A region is an organized area of the Pokémon world. Most often, the main
/// difference between regions is the species of Pokémon that can be encountered
/// within them.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#region).
struct Region: Codable {
  enum CodingKeys: String, CodingKey {
    case id
    case locations
    case name
    case names
    case mainGeneration = "main_generation"
    case pokedexes
    case versionGroups = "version_groups"
  }

  /// The identifier for this resource.
  let id: Int

  /// A list of locations that can be found in this region.
  let locations: [NamedAPIResource<Location>]

  /// The name for this resource.
  let name: String

  /// The name of this resource listed in different languages.
  let names: [Name]

  /// The generation this region was introduced in.
  let mainGeneration: NamedAPIResource<Generation>

  /// A list of pokédexes that catalogue Pokémon in this region.
  let pokedexes: [NamedAPIResource<Pokedex>]

  /// A list of version groups where this region can be visited.
  let versionGroups: [NamedAPIResource<VersionGroup>]
}
