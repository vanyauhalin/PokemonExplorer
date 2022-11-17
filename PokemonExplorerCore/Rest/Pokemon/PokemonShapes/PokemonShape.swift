/// Shapes used for sorting Pokémon in a Pokédex.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#pokemonshape).
public struct PokemonShape: Codable {
  /// The identifier for this resource.
  public let id: Int

  /// The name for this resource.
  public let name: String

  /// The "scientific" name of this Pokémon shape listed in different languages.
  public let awesomeNames: [AwesomeName]

  /// The name of this resource listed in different languages.
  public let names: [Name]

  /// A list of the Pokémon species that have this shape.
  public let pokemonSpecies: [NamedAPIResource<PokemonSpecies>]
}
