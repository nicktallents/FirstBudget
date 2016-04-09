//
//  BudgetCategory.swift
//  FirstBudget
//
//  Created by Nicholas Tallents on 4/9/16.
//  Copyright © 2016 Nicholas Tallents. All rights reserved.
//

import Foundation
import RealmSwift

class BudgetCategory : Object {
    dynamic var name             : String = ""
    dynamic var budgetValue      : Double = 0.0
    dynamic var isMasterCategory : Bool   = true
    
    dynamic var endOfMonthRedistributeTo : BudgetCategory?
}