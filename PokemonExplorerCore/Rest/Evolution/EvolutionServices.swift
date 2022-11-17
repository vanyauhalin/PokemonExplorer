import Foundation

public struct EvolutionServices {
  public let session: URLSession

  public lazy private(set) var evolutionChain
    = EvolutionChainService(session: session)
  public lazy private(set) var evolutionTrigger
    = EvolutionTriggerService(session: session)

  public init(session: URLSession) {
    self.session = session
  }
}
