//
//  iGoat_SwiftTests.swift
//  iGoat-SwiftTests
//
//  Created by Anthony G on 07/04/18.
//  Copyright © 2018 OWASP. All rights reserved.
//

import XCTest
@testable import iGoat_Swift

class iGoat_SwiftTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testStrtollConversion() {
        let validString = "12345"
        let invalidString = "abc123"
        
        // Test valid conversion
        var endptr: UnsafeMutablePointer<Int8>? = nil
        let validResult = strtoll(validString, &endptr, 10)
        XCTAssertEqual(validResult, 12345, "Valid conversion failed")
        
        // Test invalid conversion
        let invalidResult = strtoll(invalidString, &endptr, 10)
        XCTAssertEqual(invalidResult, 0, "Invalid conversion did not return 0")
        XCTAssertNotEqual(endptr?.pointee, 0, "End pointer should not be null for invalid conversion")
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
