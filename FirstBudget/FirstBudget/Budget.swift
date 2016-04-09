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
    dynamic var year     : Int    = 2016
    dynamic var month    : String = "January"
    dynamic var isMaster : Bool   = false
    
    // Relationships
    let income            = List<Transaction>()
    let preTaxExpenses    = List<Transaction>()
    let taxes             = List<Transaction>()
    let postTaxExpenses   = List<Transaction>()
    let dailyTransactions = List<Transaction>()
    let categories        = List<BudgetCategory>()
    
    // Calculated
    var grossIncome : Double {
        return sumTransactionTotals(income)
    }
    
    var netIncome : Double {
        return grossIncome - sumTransactionTotals(preTaxExpenses) - sumTransactionTotals(taxes) - sumTransactionTotals(postTaxExpenses)
    }
    
    // For Realm
    override static func ignoredProperties() -> [String] {
        return ["grossIncome", "netIncome"]
    }
}