//
//  BudgetCategory.swift
//  FirstBudget
//
//  Created by Nicholas Tallents on 4/9/16.
//  Copyright © 2016 Nicholas Tallents. All rights reserved.
//

import Foundation
import RealmSwift

class BudgetCategory : GenericModel {
    // Saved
    dynamic var name                 : String = ""
    dynamic var fullBudgetValue      : Double = 0.0
    dynamic var remainingBudgetValue : Double = 0.0
    
    // Relationships
    dynamic var endOfMonthRedistributeTo : BudgetCategory?
    
    // For Realm
}