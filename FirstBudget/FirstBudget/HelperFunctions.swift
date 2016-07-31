//
//  HelperFunctions.swift
//  FirstBudget
//
//  Created by Nicholas Tallents on 4/9/16.
//  Copyright © 2016 Nicholas Tallents. All rights reserved.
//

import Foundation
import RealmSwift

class HelperFunctions {
    
    class func sumTransactionTotals(transactions : List<GenericTransaction>) -> Double {
        var sum : Double = 0.0
    
        for trans in transactions {
            sum += trans.totalCost
        }
    
        return sum
    }

    class func getCurrentDate() -> (day: Int, month: Int, year: Int) {
        let date       = NSDate()
        let calendar   = NSCalendar.currentCalendar()
        let components = calendar.components([.Day, .Month, .Year], fromDate: date)
    
        return (components.day, components.month, components.year)
    }
}

extension Double {
    func toCurrency() -> String {
        let f = ".2"
        return String(format: "%\(f)f", self)
    }
}