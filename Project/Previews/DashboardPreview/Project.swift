import ProjectDescription
import ProjectDescriptionHelpers

let project: Project = .previewProject(
  projectName: "Dashboard",
  packages: [
    .local(path: "../../Feature/Dashboard"),
  ],
  dependencies: [
    .package(product: "Dashboard"),
  ])
