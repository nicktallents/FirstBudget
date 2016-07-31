//
//  Transaction.swift
//  FirstBudget
//
//  Created by Nicholas Tallents on 4/9/16.
//  Copyright © 2016 Nicholas Tallents. All rights reserved.
//

import Foundation
import RealmSwift

class GenericTransaction : GenericModel {
    // Saved
    dynamic var totalCost : Double  = 0.0
    dynamic var name      : String  = ""
    dynamic var notes     : String  = ""
    
    // Relationships
    
    // Calculated
    
    // For Realm
}