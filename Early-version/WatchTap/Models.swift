//
//  Models.swift
//  WatchTap
//
//  Created by Yanbo Li on 3/5/16.
//  Copyright © 2016 Yanbo Li. All rights reserved.
//

import Foundation
import RealmSwift

func rand() -> Double
{
    return Double(arc4random()) / Double(UINT32_MAX)
}

class Migraine: Object {
    dynamic var id = NSUUID().UUIDString
    dynamic var date = " "
    dynamic var level = 0
    dynamic var latitude = 40.7127 + rand() / 1000.0
    dynamic var longitude = -74.0059 + rand() / 1000.0
    
    static override func primaryKey() -> String? {
        return "id"
    }
    
}