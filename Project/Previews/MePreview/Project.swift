import ProjectDescription
import ProjectDescriptionHelpers

let project: Project = .previewProject(
  projectName: "Me",
  packages: [
    .local(path: "../../Feature/Me"),
    .local(path: "../../Core/Platform"),
    .local(path: "../../Core/Domain"),
  ],
  dependencies: [
    .package(product: "Me"),
    .package(product: "Platform"),
    .package(product: "Domain"),
  ])
