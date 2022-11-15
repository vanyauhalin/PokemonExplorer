/// Pokémon Location Areas are ares where Pokémon can be found.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#locationareaencounter).
struct LocationAreaEncounter: Codable {
  enum CodingKeys: String, CodingKey {
    case locationArea = "location_area"
    case versionDetails = "version_details"
  }
  
  /// The location area the referenced Pokémon can be encountered in.
  let locationArea: NamedAPIResource<LocationArea>
  
  /// A list of versions and encounters with the referenced Pokémon that might
  /// happen.
  let versionDetails: [VersionEncounterDetail]
}
