import XCTest

import DirectoryExistsLinuxTests

var tests = [XCTestCaseEntry]()
tests += DirectoryExistsLinuxTests.allTests()
tests += FileExistsTests.allTests()
XCTMain(tests)
