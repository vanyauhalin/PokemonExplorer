/// `PokemonSpeciesGender`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#pokemonspeciesgender).
struct PokemonSpeciesGender: Codable {
  enum CodingKeys: String, CodingKey {
    case rate
    case pokemonSpecies = "pokemon_species"
  }

  /// The chance of this Pokémon being female, in eighths; or -1 for genderless.
  let rate: Int

  /// A Pokémon species that can be the referenced gender.
  let pokemonSpecies: NamedAPIResource<PokemonSpecies>
}
