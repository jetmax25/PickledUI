import XCTest

import PickledUITests

var tests = [XCTestCaseEntry]()
tests += PickledUITests.allTests()
XCTMain(tests)
