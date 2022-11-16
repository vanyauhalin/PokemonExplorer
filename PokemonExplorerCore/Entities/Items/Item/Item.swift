/// An item is an object in the games which the player can pick up, keep in
/// their bag, and use in some manner. They have various uses, including
/// healing, powering up, helping catch Pokémon, or to access a new area.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#item).
struct Item: Codable {
  /// The identifier for this resource.
  let id: Int

  /// The name for this resource.
  let name: String

  /// The price of this item in stores.
  let cost: Int

  /// The power of the move Fling when used with this item.
  let flingPower: Int

  /// The effect of the move Fling when used with this item.
  let flingEffect: NamedAPIResource<ItemFlingEffect>

  /// A list of attributes this item has.
  let attributes: [NamedAPIResource<ItemAttribute>]

  /// The category of items this item falls into.
  let category: NamedAPIResource<ItemCategory>

  /// The effect of this ability listed in different languages.
  let effectEntries: [VerboseEffect]

  /// The flavor text of this ability listed in different languages.
  let flavorTextEntries: [VersionGroupFlavorText]

  /// A list of game indices relevent to this item by generation.
  let gameIndices: [GenerationGameIndex]

  /// The name of this item listed in different languages.
  let names: [Name]

  /// A set of sprites used to depict this item in the game.
  let sprites: ItemSprites

  /// A list of Pokémon that might be found in the wild holding this item.
  let heldByPokemon: [ItemHolderPokemon]

  /// An evolution chain this item requires to produce a bay during mating.
  let babyTriggerFor: APIResource<EvolutionChain>

  /// A list of the machines related to this item.
  let machines: [MachineVersionDetail]
}
