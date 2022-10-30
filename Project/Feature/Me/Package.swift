// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "Me",
  platforms: [.iOS(.v15)],
  products: [
    .library(
      name: "Me",
      targets: ["Me"]),
  ],
  dependencies: [
    .package(path: "../../Core/Domain"),
  ],
  targets: [
    .target(
      name: "Me",
      dependencies: [
        "Domain",
      ],
      resources: [
      ]),
    .testTarget(
      name: "MeTests",
      dependencies: ["Me"]),
  ])
