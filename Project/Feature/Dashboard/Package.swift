// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "Dashboard",
  platforms: [.iOS(.v15)],
  products: [
    .library(
      name: "Dashboard",
      targets: ["Dashboard"]),
  ],
  dependencies: [
    .package(path: "../../Core/Domain"),
    .package(path: "../../Core/ArchitectureSupport"),
    .package(
      url: "https://github.com/pointfreeco/swift-composable-architecture",
      .upToNextMajor(from: "0.44.1")),
    .package(
          url: "https://github.com/interactord/LinkNavigator",
          .upToNextMajor(from: "0.3.0")),
  ],
  targets: [
    .target(
      name: "Dashboard",
      dependencies: [
        .product(name: "ComposableArchitecture", package: "swift-composable-architecture"),
        "LinkNavigator",
        "Domain",
        "ArchitectureSupport",
      ],
      resources: [
      ]),
    .testTarget(
      name: "DashboardTests",
      dependencies: ["Dashboard"]),
  ])
