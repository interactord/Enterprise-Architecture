import ProjectDescription
import ProjectDescriptionHelpers

let project: Project = .previewProject(
  projectName: "Dashboard",
  packages: [
    .local(path: "../../Feature/Dashboard"),
    .local(path: "../../Core/Platform"),
    .local(path: "../../Core/Domain"),
  ],
  dependencies: [
    .package(product: "Dashboard"),
    .package(product: "Platform"),
    .package(product: "Domain"),
  ])
