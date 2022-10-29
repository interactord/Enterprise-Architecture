import ProjectDescription
import ProjectDescriptionHelpers

let project: Project = .previewProject(
  projectName: "Me",
  packages: [
    .local(path: "../../Feature/Me"),
  ],
  dependencies: [
    .package(product: "Me"),
  ])
