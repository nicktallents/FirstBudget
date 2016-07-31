//
//  OneTimeTransaction.swift
//  FirstBudget
//
//  Created by Nicholas Tallents on 7/30/16.
//  Copyright © 2016 Nicholas Tallents. All rights reserved.
//

import Foundation
import RealmSwift

class OneTimeTransaction : GenericTransaction {
    // Saved
    dynamic var date      : NSDate? = NSDate()
    
    let costDistribution = [Double]()
    
    // Relationships
    let categories       = List<BudgetCategory>()
    
    // Calculated
    
    // For Realm
}