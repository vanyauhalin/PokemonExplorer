/// Locations that can be visited within the games. Locations make up sizable
/// portions of regions, like cities or routes.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#location).
public struct Location: Codable {
  /// The identifier for this resource.
  public let id: Int

  /// The name for this resource.
  public let name: String

  /// The region this location can be found in.
  public let region: NamedAPIResource<Region>

  /// The name of this resource listed in different languages.
  public let names: [Name]

  /// A list of game indices relevent to this location by generation.
  public let gameIndices: [GenerationGameIndex]

  /// Areas that can be found within this location.
  public let areas: [NamedAPIResource<LocationArea>]
}
