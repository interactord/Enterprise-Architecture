// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "Event",
  platforms: [.iOS(.v15)],
  products: [
    .library(
      name: "Event",
      targets: ["Event"]),
  ],
  dependencies: [
    .package(path: "../../Core/Domain"),
    .package(path: "../../Core/ArchitectureSupport"),
    .package(
      url: "https://github.com/pointfreeco/swift-composable-architecture",
      .upToNextMajor(from: "0.44.1")),
  ],
  targets: [
    .target(
      name: "Event",
      dependencies: [
        .product(name: "ComposableArchitecture", package: "swift-composable-architecture"),
        "Domain",
        "ArchitectureSupport",
      ],
      resources: [
      ]),
    .testTarget(
      name: "EventTests",
      dependencies: ["Event"]),
  ])
