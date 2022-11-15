import ProjectDescription
import ProjectDescriptionHelpers

let project = Project(
  name: .name(by: "Core"),
  organizationName: .organizationName(),
  targets: [
    Target(
      name: .name(by: "Core"),
      platform: .configure(),
      product: .framework,
      bundleId: .bundleId(by: "Core"),
      deploymentTarget: .configure(),
      infoPlist: .configure(),
      sources: .configure(),
      scripts: [
        .lintProject()
      ]
    )
  ]
)
