//
//  Models.swift
//  GoatFinder
//
//  Created by Yanbo Li on 3/3/16.
//  Copyright © 2016 Daniel Hauagge. All rights reserved.
//

import RealmSwift

func rand() -> Double
{
    return Double(arc4random()) / Double(UINT32_MAX)
}

class Activity : Object {
    dynamic var id = NSUUID().UUIDString
    dynamic var name = ""
    dynamic var level = "" //age
//    dynamic var latitude: Double = 0.0
//    dynamic var longtitude: Double = 0.0
    dynamic var latitude = 40.740019 + rand() / 1000.0
    dynamic var longitude = -74.002181 + rand() / 1000.0
    
    static override func primaryKey() -> String? {
        return "id"
    }
}
