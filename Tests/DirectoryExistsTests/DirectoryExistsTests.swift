import XCTest
import Foundation
@testable import DirectoryExists

final class DirectoryExistsTests: XCTestCase {
  var fileManager: FileManager?
  var currentPath: String?
  
  override func setUp() {
    fileManager = FileManager.default
    currentPath = fileManager!.currentDirectoryPath
  }
  
  override func tearDown() {
    fileManager = nil
  }
  
  func testWithExistingDirectory() {
    let path = UnsafeMutablePointer<Int8>(mutating: (currentPath! as NSString).utf8String)
    let isDirectory = directoryExists(path)
    
    XCTAssertTrue(isDirectory)
  }
  
  func testWithNotExistingDirectory() {
    let fakePath = currentPath! + "/foobar"
    let isDirectory = directoryExists(fakePath)
    
    XCTAssertFalse(isDirectory)
  }
  
  func testWithPathToFile() {
    let dummyContent = "dummy content".data(using: .utf8)
    let filePath = currentPath! + "/testfile"
    fileManager!.createFile(atPath: filePath, contents: dummyContent, attributes: nil)

    let fileExists = fileManager!.fileExists(atPath: filePath)
    let isDirectory = directoryExists(filePath)
    
    XCTAssertTrue(fileExists)
    XCTAssertFalse(isDirectory)
  }
  
  
  static var allTests = [
    ("testWithExistingDirectory", testWithExistingDirectory),
    ("testWithNotExistingDirectory", testWithNotExistingDirectory),
    ("testWithPathToFile", testWithPathToFile)
  ]

}
