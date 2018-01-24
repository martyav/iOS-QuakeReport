//
//  GlobalConstant.swift
//  iOS-QuakeReport
//
//  Created by C4Q on 1/24/18.
//  Copyright © 2018 C4Q. All rights reserved.
//

import Foundation

class Constant {
    private init() {}
    
    private static let fileName = "SampleJSONResponse"
    private static let fileExtension = "geojson"
    
    private static let localJSONPath = Bundle.main.path(forResource: Constant.fileName, ofType: Constant.fileExtension)
    private static let localJSONUrl = Bundle.main.url(forResource: Constant.fileName, withExtension: Constant.fileExtension)
    
    static let localJSONContents = try! String.init(contentsOfFile: Constant.localJSONPath!)
    static let localJSONData = try! Data.init(contentsOf: Constant.localJSONUrl!)
}

