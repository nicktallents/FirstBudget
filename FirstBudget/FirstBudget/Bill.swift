//
//  Bill.swift
//  FirstBudget
//
//  Created by Nicholas Tallents on 7/30/16.
//  Copyright © 2016 Nicholas Tallents. All rights reserved.
//

import Foundation
import RealmSwift

class Bill : Object {
    // Inheritance
    dynamic var budgetCategory : BudgetCategory? = nil
    
    // Saved
    dynamic var datePaid : NSDate? = NSDate()
    
    // Relationships
    
    // Calculated
    
    // For Realm
}