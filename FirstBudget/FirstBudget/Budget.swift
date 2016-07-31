//
//  Budget.swift
//  FirstBudget
//
//  Created by Nicholas Tallents on 4/9/16.
//  Copyright © 2016 Nicholas Tallents. All rights reserved.
//

import Foundation
import RealmSwift

class Budget : GenericModel {
    // Saved
    // Master will be saved as year: -1, month: -1
    dynamic var year  : Int = 0
    dynamic var month : Int = 0
    
    // Relationships
    let income            = List<GenericTransaction>()
    let preTaxExpenses    = List<GenericTransaction>()
    let taxes             = List<GenericTransaction>()
    let postTaxExpenses   = List<GenericTransaction>()
    let dailyTransactions = List<OneTimeTransaction>()
    let bills             = List<Bill>()
    let categories        = List<BudgetCategory>()
    
    // Calculated
    var grossIncome : Double {
        return HelperFunctions.sumTransactionTotals(income)
    }
    
    var netIncome : Double {
        return grossIncome - HelperFunctions.sumTransactionTotals(preTaxExpenses) - HelperFunctions.sumTransactionTotals(taxes) - HelperFunctions.sumTransactionTotals(postTaxExpenses)
    }
    
    // For Realm
    override static func ignoredProperties() -> [String] {
        return ["grossIncome", "netIncome"]
    }
}