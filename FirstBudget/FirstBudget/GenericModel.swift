//
//  GenericModel.swift
//  FirstBudget
//
//  Created by Nicholas Tallents on 4/9/16.
//  Copyright © 2016 Nicholas Tallents. All rights reserved.
//

import Foundation
import RealmSwift

class GenericModel : Object {
    dynamic var id : Int = 0
    
    override static func primaryKey() -> String? {
        return "id"
    }
}