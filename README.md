# CFileUtils

[swift-corelibs-foundation](https://github.com/apple/swift-corelibs-foundation) does not have the `fileExists(atPath:, isDirectory:)` implementation, since it requires Objective-C runtime. 

This package provides a simple API to check if a directory or a file exists. The functionality is implemented on C. 

## Usage

Add this package and make your target depend on it

```swift
let package = Package(
  name: "Cool-SPM-Project",
  dependencies: [
    .package(url: "https://github.com/TommiKivimaki/CFileUtils", .branch("master"))
  ],
  targets: [
    .target(
      name: "Cool-SPM-Project",
      dependencies: ["CFileUtils"])
  ]
)
  ```
  
  
  ## Running test suite on Linux
  
  Build a Docker image
  ```docker build -t cfileutils-tests .``` 
  
  Run the test
  ```docker run --rm cfileutils-tests```
  
  
  
