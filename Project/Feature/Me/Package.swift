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
  ],
  targets: [
    .target(
      name: "Me",
      dependencies: [
      ],
      resources: [
      ]),
    .testTarget(
      name: "MeTests",
      dependencies: ["Me"]),
  ])
