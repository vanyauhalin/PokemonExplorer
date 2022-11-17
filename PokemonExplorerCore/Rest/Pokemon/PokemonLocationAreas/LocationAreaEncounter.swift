/// Pokémon Location Areas are ares where Pokémon can be found.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#locationareaencounter).
public struct LocationAreaEncounter: Codable {
  /// The location area the referenced Pokémon can be encountered in.
  public let locationArea: NamedAPIResource<LocationArea>

  /// A list of versions and encounters with the referenced Pokémon that might
  /// happen.
  public let versionDetails: [VersionEncounterDetail]
}
