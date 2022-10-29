import ProjectDescription
import ProjectDescriptionHelpers

let targets: [Target] = [
  .init(
    name: "MyApp-QA",
    platform: .iOS,
    product: .app,
    bundleId: "com.myCompany.myApp",
    deploymentTarget: .defaultTarget,
    infoPlist: .extendingDefault(with: infoValue),
    sources: ["Sources/**"],
    resources: ["Resources/**"],
    entitlements: .relativeToRoot("Entitlements/Application.entitlements"),
    scripts: [],
    dependencies: .default,
    settings: .development),

  .init(
    name: "MyApp",
    platform: .iOS,
    product: .app,
    bundleId: "com.myCompany.myApp",
    deploymentTarget: .defaultTarget,
    infoPlist: .extendingDefault(with: infoValue),
    sources: ["Sources/**"],
    resources: ["Resources/**"],
    entitlements: .relativeToRoot("Entitlements/Application.entitlements"),
    scripts: [],
    dependencies: .default,
    settings: .production),

  .init(
    name: "MyAppTests",
    platform: .iOS,
    product: .unitTests,
    bundleId: "com.myCompany.myApp.tests",
    deploymentTarget: .defaultTarget,
    infoPlist: .default,
    sources: ["Tests/**"],
    dependencies: [
      .target(name: "MyApp"),
    ],
    settings: .settings()),

]

let project: Project = .init(
  name: "MyApp",
  organizationName: "myapp",
  packages: [
    .local(path: "../Feature/Authencation"),
    .local(path: "../Feature/Dashboard"),
    .local(path: "../Feature/Me"),
    .local(path: "../Feature/Event"),
  ],
  settings: .settings(),
  targets: targets,
  schemes: [])

extension Collection where Element == TargetDependency {
  public static var `default`: [TargetDependency] {
    [
      .package(product: "Authencation"),
      .package(product: "Dashboard"),
      .package(product: "Me"),
      .package(product: "Event"),
    ]
  }
}

extension Settings {
  public static let production: Settings = .settings(
    base: [
      "CODE_SIGN_IDENTITY": "iPhone Developer",
      "CODE_SIGN_STYLE": "Automatic",
      "MODE": "Production",
    ],
    configurations: [],
    defaultSettings: .recommended)

  public static let development: Settings = .settings(
    base: [
      "CODE_SIGN_IDENTITY": "iPhone Developer",
      "CODE_SIGN_STYLE": "Automatic",
      "MODE": "Development",
    ],
    configurations: [],
    defaultSettings: .recommended)
}
