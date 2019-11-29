// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "CFileUtils",
  products: [
    .library(
      name: "CFileUtils",
      targets: ["DirectoryExists", "FileExists"]),
  ],
  dependencies: [
  ],
  targets: [
    .target(
      name: "DirectoryExists",
      dependencies: []),
    .target(
      name: "FileExists",
      dependencies: []),
    .testTarget(
      name: "DirectoryExistsTests",
      dependencies: ["DirectoryExists"]),
    .testTarget(
      name: "FileExistsTests",
      dependencies: ["FileExists"])
  ]
)
