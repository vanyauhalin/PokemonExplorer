/// Locations that can be visited within the games. Locations make up sizable
/// portions of regions, like cities or routes.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#location).
struct Location: Codable {
  enum CodingKeys: String, CodingKey {
    case id
    case name
    case region
    case names
    case gameIndices = "game_indices"
    case areas
  }

  /// The identifier for this resource.
  let id: Int

  /// The name for this resource.
  let name: String

  /// The region this location can be found in.
  let region: NamedAPIResource<Region>

  /// The name of this resource listed in different languages.
  let names: [Name]

  /// A list of game indices relevent to this location by generation.
  let gameIndices: [GenerationGameIndex]

  /// Areas that can be found within this location.
  let areas: [NamedAPIResource<LocationArea>]
}
