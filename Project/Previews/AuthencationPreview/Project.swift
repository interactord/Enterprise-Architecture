import ProjectDescription
import ProjectDescriptionHelpers

let project: Project = .previewProject(
  projectName: "Authencation",
  packages: [
    .local(path: "../../Feature/Authencation"),
  ],
  dependencies: [
    .package(product: "Authencation"),
  ])
