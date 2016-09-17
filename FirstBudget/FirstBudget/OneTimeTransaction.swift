//
//  OneTimeTransaction.swift
//  FirstBudget
//
//  Created by Nicholas Tallents on 7/30/16.
//  Copyright © 2016 Nicholas Tallents. All rights reserved.
//

import Foundation
import RealmSwift

class OneTimeTransaction : Object {
    // Inheritance
    dynamic var genericTransation : GenericTransaction? = nil
    
    // Saved
    dynamic var date      : Date? = Date()
    
    let costDistribution = [Double]()
    
    // Relationships
    let categories       = List<BudgetCategory>()
    
    // Calculated
    
    // For Realm
}
