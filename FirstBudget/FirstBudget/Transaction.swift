//
//  Transaction.swift
//  FirstBudget
//
//  Created by Nicholas Tallents on 4/9/16.
//  Copyright © 2016 Nicholas Tallents. All rights reserved.
//

import Foundation
import RealmSwift


class Transaction : Object {
    dynamic var totalCost : Double  = 0.0
    dynamic var type      : String  = "Expense"
    dynamic var location  : String  = ""
    dynamic var reason    : String  = ""
    dynamic var notes     : String  = ""
    dynamic var date      : NSDate? = NSDate()
    
    let costDistribution = [Double]()
    let categories       = List<BudgetCategory>()
}