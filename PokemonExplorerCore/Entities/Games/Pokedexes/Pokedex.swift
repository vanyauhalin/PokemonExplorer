/// A Pokédex is a handheld electronic encyclopedia device; one which is capable
/// of recording and retaining information of the various Pokémon in a given
/// region with the exception of the national dex and some smaller dexes related
/// to portions of a region. See
/// [Bulbapedia](http://bulbapedia.bulbagarden.net/wiki/Pokedex) for greater
/// detail.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#pokedex).
struct Pokedex: Codable {
  enum CodingKeys: String, CodingKey {
    case id
    case name
    case isMainSeries = "is_main_series"
    case descriptions
    case names
    case pokemonEntries = "pokemon_entries"
    case region
    case versionGroups = "version_groups"
  }

  /// The identifier for this resource.
  let id: Int

  /// The name for this resource.
  let name: String

  /// Whether or not this Pokédex originated in the main series of the video games.
  let isMainSeries: Bool

  /// The description of this resource listed in different languages.
  let descriptions: [Description]

  /// The name of this resource listed in different languages.
  let names: [Name]

  /// A list of Pokémon catalogued in this Pokédex and their indexes.
  let pokemonEntries: [PokemonEntry]

  /// The region this Pokédex catalogues Pokémon for.
  let region: NamedAPIResource<Region>

  /// A list of version groups this Pokédex is relevant to.
  let versionGroups: [NamedAPIResource<VersionGroup>]
}
