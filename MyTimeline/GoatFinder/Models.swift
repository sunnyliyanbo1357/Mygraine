//
//  Models.swift
//  GoatFinder
//
//  Created by Daniel Hauagge on 3/3/16.
//  Copyright © 2016 Daniel Hauagge. All rights reserved.
//

import RealmSwift

func rand() -> Double
{
    return Double(arc4random()) / Double(UINT32_MAX)
}

class Goat : Object {
    dynamic var id = NSUUID().UUIDString
    dynamic var name = ""
    dynamic var age = ""
    dynamic var latitude = 40.740019 + rand() / 1000.0
    dynamic var longitude = -74.002181 + rand() / 1000.0
    
    static override func primaryKey() -> String? {
        return "id"
    }
}
