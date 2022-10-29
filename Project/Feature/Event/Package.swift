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
  ],
  targets: [
    .target(
      name: "Event",
      dependencies: [
      ],
      resources: [
      ]),
    .testTarget(
      name: "EventTests",
      dependencies: ["Event"]),
  ])
