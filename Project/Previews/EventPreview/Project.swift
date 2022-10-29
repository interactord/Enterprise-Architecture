import ProjectDescription
import ProjectDescriptionHelpers

let project: Project = .previewProject(
  projectName: "Event",
  packages: [
    .local(path: "../../Feature/Event"),
  ],
  dependencies: [
    .package(product: "Event"),
  ])
