import Foundation

public struct BerriesServices {
  public let session: URLSession

  public lazy private(set) var berry
    = BerryService(session: session)
  public lazy private(set) var berryFirmness
    = BerryFirmnessService(session: session)
  public lazy private(set) var berryFlavor
    = BerryFlavorService(session: session)

  public init(session: URLSession) {
    self.session = session
  }
}
