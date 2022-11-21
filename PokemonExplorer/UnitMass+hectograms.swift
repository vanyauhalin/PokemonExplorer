import Foundation

extension UnitMass {
  class var hectograms: UnitMass {
    return UnitMass(
      symbol: "hg",
      converter: UnitConverterLinear(coefficient: 0.1)
    )
  }
}
