//
//  PrimaryKeyCounter.swift
//  FirstBudget
//
//  Created by Nicholas Tallents on 4/9/16.
//  Copyright © 2016 Nicholas Tallents. All rights reserved.
//

import Foundation
import RealmSwift

class PrimaryKeyCounter : GenericModel {
    // Saved
    dynamic var key   : String = ""
    dynamic var value : Int    = 0
}