import XCTest

import DirectoryExistsTests
import FileExistsTests

var tests = [XCTestCaseEntry]()
tests += DirectoryExistsTests.allTests()
tests += FileExistsTests.allTests()
XCTMain(tests)
