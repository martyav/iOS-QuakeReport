//
//  JSONParser.swift
//  iOS-QuakeReport
//
//  Created by C4Q on 1/22/18.
//  Copyright © 2018 C4Q. All rights reserved.
//

import Foundation

// equivalent to NetworkUtils class -> https://github.com/martyav/ud843-QuakeReport/blob/starting-point/app/src/main/java/com/example/android/quakereport/QueryUtils.java

enum JSONError: Error {
    case BadData, CouldNotParse, KeyDoesNotExist, WrongType
}

class JSONParser {
    private init() {}
    
    static let instance = JSONParser()
    
    func extract(_ earthquakes: Data) -> [EarthquakeEvent] {
        var events = [EarthquakeEvent]()
        
        do {
            guard let root = try JSONSerialization.jsonObject(with: earthquakes, options: .allowFragments) as? [String : AnyObject] else {
                print(earthquakes)
                throw JSONError.BadData
            }
            print(root)
            
            guard let features = root["features"] as? [[String : AnyObject]] else {
                throw JSONError.KeyDoesNotExist
            }
            print(features)
            
            for item in features {
                let event = item as [String : AnyObject]
                print(event)
                
                guard let properties = event["properties"] as? [String : AnyObject] else { throw JSONError.KeyDoesNotExist }
                
                guard let magnitude = properties["mag"] as? Double else { throw JSONError.WrongType }
                
                guard let place = properties["place"] as? String else { throw JSONError.WrongType }
                
                guard let timestamp = properties["time"] as? Int else { throw JSONError.WrongType }
                
                let newEvent = EarthquakeEvent(magnitude: magnitude, place: place, timestamp: timestamp)
                
                events.append(newEvent)
            }
            
        }
            
        catch JSONError.BadData {
            print("Bad data")
        }
        
        catch JSONError.CouldNotParse {
            print("Could not parse the data")
        }
        
        catch JSONError.WrongType {
            print("Data is wrong type")
        }
        
        catch JSONError.KeyDoesNotExist {
            print("Key not found")
        }
        
        catch {
            print(error.localizedDescription)
        }
        
        return events
    }
}
