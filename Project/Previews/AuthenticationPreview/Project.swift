import ProjectDescription
import ProjectDescriptionHelpers

let project: Project = .previewProject(
  projectName: "Authentication",
  packages: [
    .local(path: "../../Feature/Authentication"),
    .local(path: "../../Core/Platform"),
    .local(path: "../../Core/Domain"),
  ],
  dependencies: [
    .package(product: "Authentication"),
    .package(product: "Platform"),
    .package(product: "Domain"),
  ])
