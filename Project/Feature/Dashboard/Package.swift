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
  ],
  targets: [
    .target(
      name: "Dashboard",
      dependencies: [
      ],
      resources: [
      ]),
    .testTarget(
      name: "DashboardTests",
      dependencies: ["Dashboard"]),
  ])
