//
//  HelperFunctions.swift
//  FirstBudget
//
//  Created by Nicholas Tallents on 4/9/16.
//  Copyright © 2016 Nicholas Tallents. All rights reserved.
//

import Foundation
import RealmSwift

func sumTransactionTotals(transactions : List<Transaction>) -> Double {
    var sum : Double = 0.0
    
    for trans in transactions {
        sum += trans.totalCost
    }
    
    return sum
}