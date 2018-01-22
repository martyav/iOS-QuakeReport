//
//  EarthquakeEvent.swift
//  iOS-QuakeReport
//
//  Created by C4Q on 1/22/18.
//  Copyright © 2018 C4Q. All rights reserved.
//

import Foundation

// https://github.com/martyav/ud843-QuakeReport/blob/starting-point/app/src/main/java/com/example/android/quakereport/EarthquakeEvent.java

struct EarthquakeEvent {
    private let magnitude: Double
    private let place: String
    private let timestamp: String
    
    init(magnitude: Double, place: String, timestamp: String) {
        self.magnitude = magnitude
        self.place = place
        self.timestamp = timestamp
    }
    
    // MARK: - write a convenience init for handling the data as it comes in raw from the JSON
    
    func getMagnitude() -> Double {
        return self.magnitude
    }
    
    func getPlace() -> String {
        return self.place
    }
    
    func getTimestamp() -> String {
        return self.timestamp
    }
}
