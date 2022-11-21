import RealmSwift

public class NameLanguage: NamedAPIResource<Language> {}

/// `Name`.
///
/// Up-to-date documentation can be found one the
/// [website](https://pokeapi.co/docs/v2#name).
public class Name: Object, ObjectKeyIdentifiable, Codable {
  /// The localized name for an API resource in a specific language.
  @Persisted public var name: String

  // /// The language this name is in.
  @Persisted public var language: NameLanguage?
}
