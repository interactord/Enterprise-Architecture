import ProjectDescription
import ProjectDescriptionHelpers

let project: Project = .previewProject(
  projectName: "Event",
  packages: [
    .local(path: "../../Feature/Event"),
    .local(path: "../../Core/Platform"),
    .local(path: "../../Core/Domain"),
  ],
  dependencies: [
    .package(product: "Event"),
    .package(product: "Platform"),
    .package(product: "Domain"),
  ])
