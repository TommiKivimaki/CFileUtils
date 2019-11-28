// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "DirectoryExistsLinux",
  products: [
    .library(
      name: "DirectoryExistsLinux",
      targets: ["DirectoryExistsLinux"]),
  ],
  dependencies: [
  ],
  targets: [
    .target(
      name: "DirectoryExistsLinux",
      dependencies: []),
    .testTarget(
      name: "DirectoryExistsLinuxTests",
      dependencies: ["DirectoryExistsLinux"]),
  ]
)
