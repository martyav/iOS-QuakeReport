//
//  iOS_QuakeReportTests.swift
//  iOS-QuakeReportTests
//
//  Created by C4Q on 1/22/18.
//  Copyright © 2018 C4Q. All rights reserved.
//

import XCTest
@testable import iOS_QuakeReport

class iOS_QuakeReportTests: XCTestCase {
    var exampleParser: JSONParser!
    
    override func setUp() {
        super.setUp()
        
        self.exampleParser = JSONParser.instance
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testJSONRetrieval() {
        let json = Constant.localJSONContents
        
        print(json)
        
        XCTAssert(!json.isEmpty)
    }
    
    func testJSONData() {
        let data = Constant.localJSONData
        
        print(data)
        
        XCTAssert(!data.isEmpty)
    }
    
    func testParser() {
        // note to self: parser is failing because jsonSerialization expects quotes around each key. Our keys are not wrapped in quotes and are not considered valid
        
        let data = Constant.localJSONData
        
        let array = exampleParser.extract(data)
        
        print(array)
        
        XCTAssert(!array.isEmpty)
    }
    
}
