/// `PalParkEncounterArea`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#palparkencounterarea).
struct PalParkEncounterArea: Codable {
  /// The base score given to the player when the referenced Pokémon is caught
  /// during a pal park run.
  let baseScore: Int

  /// The base rate for encountering the referenced Pokémon in this pal park
  /// area.
  let rate: Int

  /// The pal park area where this encounter happens.
  let area: NamedAPIResource<PalParkArea>
}
