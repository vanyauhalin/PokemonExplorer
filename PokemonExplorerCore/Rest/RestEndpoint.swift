import Foundation

enum RestEndpoint {
  typealias Parameters<ParameterValue> = [(String, ParameterValue)]

  enum Patterns: String {
    case path = "(\\{\\S.*?\\})\\/"
    case query = ".*(\\{\\S.*?\\})$"
  }

  static func apply<ParameterValue>(
    parameters: Parameters<ParameterValue>,
    to path: String
  ) -> String {
    var temporally = path
    temporally = apply(pathParameters: parameters, to: temporally)
    temporally = apply(queryParameters: parameters, to: temporally)
    return temporally
  }

  static func apply<ParameterValue>(
    pathParameters parameters: Parameters<ParameterValue>,
    to path: String
  ) -> String {
    var temporally = path
    let templates = matchParameterTemplates(from: path, by: .path)
    templates.forEach { template in
      guard
        let parameter = parameters.first(where: { parameterName, _ in
          template.contains(parameterName)
        })
      else {
        return
      }
      let parameterValue = parameter.1
      temporally = temporally.replacingOccurrences(
        of: template,
        with: "\(parameterValue)"
      )
    }
    return temporally
  }

  static func apply<ParameterValue>(
    queryParameters parameters: Parameters<ParameterValue>,
    to path: String
  ) -> String {
    var temporally = path
    let templates = matchParameterTemplates(from: path, by: .query)
    templates.forEach { template in
      let joinedParameters = parameters
        .filter { parameterName, _ in
          template.contains(parameterName)
        }
        .map { parameterName, parameterValue in
          "\(parameterName)=\(parameterValue)"
        }
        .joined(separator: "&")
      temporally = temporally.replacingOccurrences(
        of: template,
        with: "?\(joinedParameters)"
      )
    }
    return temporally
  }

  static func matchParameterTemplates(
    from path: String,
    by pattern: Patterns
  ) -> [String] {
    let range = NSRange(location: .zero, length: path.count)
    // Properly disabled considering the risks. There is no need for strict
    // validation, as patterns are only passed within `Patterns` enum.
    // swiftlint:disable:next_line force_try
    let regex = try! NSRegularExpression(pattern: pattern.rawValue)
    let matches = regex.matches(in: path, range: range)
    var templates: [String] = []
    matches.forEach { match in
      for rangeIndex in 0..<match.numberOfRanges {
        let matchRange = match.range(at: rangeIndex)
        if let substringRange = Range(matchRange, in: path) {
          let substring = String(path[substringRange])
          if substring.first == "{" && substring.last == "}" {
            templates.append(substring)
          }
        }
      }
    }
    return templates
  }
}
