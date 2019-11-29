import XCTest
import Foundation
@testable import FileExists

final class FileExistsTests: XCTestCase {
  var fileManager: FileManager?
  var currentPath: String?
  var filePath: String!
  
  override func setUp() {
    fileManager = FileManager.default
    currentPath = fileManager!.currentDirectoryPath
    
    let dummyContent = "dummy content".data(using: .utf8)
    filePath = currentPath! + "/testfile"
    fileManager!.createFile(atPath: filePath, contents: dummyContent, attributes: nil)
  }
  
  override func tearDown() {
    fileManager = nil
  }

  func testWithExistingFile() {
    let fmFileExists = fileManager!.fileExists(atPath: filePath)
    let isFile = fileExists(filePath)

    XCTAssertTrue(fmFileExists)
    XCTAssertTrue(isFile)
  }
  
  func testWithNonExistingFile() {
    let nonExistingPath = filePath + "/foo"
    let fmFileExists = fileManager!.fileExists(atPath: nonExistingPath)
    let isFile = fileExists(nonExistingPath)
    
    XCTAssertFalse(fmFileExists)
    XCTAssertFalse(isFile)
  }
  
  func testWithDirectory() {
    let path = UnsafeMutablePointer<Int8>(mutating: (currentPath! as NSString).utf8String)
    let isFile = fileExists(path)
    
    XCTAssertFalse(isFile)
  }
  
  static var allTests = [
    ("testWithExistingFile", testWithExistingFile),
    ("testWithNonExistingFile", testWithNonExistingFile),
    ("testWithDirectory", testWithDirectory)
  ]

}

