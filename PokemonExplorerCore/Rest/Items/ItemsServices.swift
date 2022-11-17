import Foundation

public struct ItemsServices {
  public let session: URLSession

  public lazy private(set) var item
    = ItemService(session: session)
  public lazy private(set) var itemAttribute
    = ItemAttributeService(session: session)
  public lazy private(set) var itemCategory
    = ItemCategoryService(session: session)
  public lazy private(set) var itemFlingEffect
    = ItemFlingEffectService(session: session)
  public lazy private(set) var itemPocket
    = ItemPocketService(session: session)

  public init(session: URLSession) {
    self.session = session
  }
}
