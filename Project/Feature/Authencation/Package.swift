// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "Authencation",
  platforms: [.iOS(.v15)],
  products: [
    .library(
      name: "Authencation",
      targets: ["Authencation"]),
  ],
  dependencies: [
  ],
  targets: [
    .target(
      name: "Authencation",
      dependencies: [
      ],
      resources: [
      ]),
    .testTarget(
      name: "AuthencationTests",
      dependencies: ["Authencation"]),
  ])
