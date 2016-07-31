//
//  BudgetRepository.swift
//  FirstBudget
//
//  Created by Nicholas Tallents on 4/9/16.
//  Copyright © 2016 Nicholas Tallents. All rights reserved.
//

import Foundation
import RealmSwift

// Errors
enum BudgetError: ErrorType {
    case NotFound
}

class BudgetRepository : Repository {
    
    // Queries
    func getCurrentMonthBudget() throws -> Budget {
        let date    = HelperFunctions.getCurrentDate()
        let budgets = realm.objects(Budget).filter("month = \"\(date.month)\" AND year = \(date.year)")
        
        if budgets.count == 0 {
            throw BudgetError.NotFound
        } else {
            return budgets[0]
        }
    }
    
    func getMasterBudget() throws -> Budget {
        let budgets = realm.objects(Budget).filter("isMaster = true")
        
        if budgets.count == 0 {
            throw BudgetError.NotFound
        } else {
            return budgets[0]
        }
    }
    
    // Modify
    func addSave(obj : Budget) {
        addSave(obj, objType: "Budget")
    }
}