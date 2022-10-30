// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "ArchitectureSupport",
  platforms: [.iOS(.v15)],
  products: [
    .library(
      name: "ArchitectureSupport",
      targets: ["ArchitectureSupport"]),

  ],
  dependencies: [
  ],
  targets: [
    .target(
      name: "ArchitectureSupport",
      dependencies: [
      ]),
    .testTarget(
      name: "ArchitectureSupportTests",
      dependencies: ["ArchitectureSupport"]),
  ])
