/// Areas used for grouping Pokémon encounters in Pal Park. They're like
/// habitats that are specific to
/// [Pal Park](https://bulbapedia.bulbagarden.net/wiki/Pal_Park).
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#palparkarea).
public struct PalParkArea: Codable {
  /// The identifier for this resource.
  public let id: Int

  /// The name for this resource.
  public let name: String

  /// The name of this resource listed in different languages.
  public let names: [Name]

  /// A list of Pokémon encountered in thi pal park area along with details.
  public let pokemonEncounters: [PalParkEncounterSpecies]
}
