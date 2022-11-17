/// A region is an organized area of the Pokémon world. Most often, the main
/// difference between regions is the species of Pokémon that can be encountered
/// within them.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#region).
public struct Region: Codable {
  /// The identifier for this resource.
  public let id: Int

  /// A list of locations that can be found in this region.
  public let locations: [NamedAPIResource<Location>]

  /// The name for this resource.
  public let name: String

  /// The name of this resource listed in different languages.
  public let names: [Name]

  /// The generation this region was introduced in.
  public let mainGeneration: NamedAPIResource<Generation>

  /// A list of pokédexes that catalogue Pokémon in this region.
  public let pokedexes: [NamedAPIResource<Pokedex>]

  /// A list of version groups where this region can be visited.
  public let versionGroups: [NamedAPIResource<VersionGroup>]
}
