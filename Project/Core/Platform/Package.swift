// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "Platform",
  platforms: [.iOS(.v15)],
  products: [
    .library(
      name: "Platform",
      targets: ["Platform"]),

  ],
  dependencies: [
    .package(path: "../Domain"),
  ],
  targets: [
    .target(
      name: "Platform",
      dependencies: [
        "Domain",
      ]),
    .testTarget(
      name: "PlatformTests",
      dependencies: ["Platform"]),
  ])
