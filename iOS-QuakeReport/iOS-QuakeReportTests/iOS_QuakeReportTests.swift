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
    
    func testParser() {
        // take in the geojsonfile, return an array of earthquakes
        
        let array = exampleParser.extract(Constant.localJSONData)
        
        print(array)
        
        XCTAssert(!array.isEmpty)
    }
    
}
