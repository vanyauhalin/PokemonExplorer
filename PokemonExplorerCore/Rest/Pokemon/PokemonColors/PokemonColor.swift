/// Colors used for sorting Pokémon in a Pokédex. The color listed in the
/// Pokédex is usually the color most apparent or covering each Pokémon's body.
/// No orange category exists; Pokémon that are primarily orange are listed as
/// red or brown.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#pokemoncolor).
public struct PokemonColor: Codable {
  /// The identifier for this resource.
  public let id: Int

  /// The name for this resource.
  public let name: String

  /// The name of this resource listed in different languages.
  public let names: [Name]

  /// A list of the Pokémon species that have this color.
  public let pokemonSpecies: [NamedAPIResource<PokemonSpecies>]
}
