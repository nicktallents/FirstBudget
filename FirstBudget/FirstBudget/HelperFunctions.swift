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
    
    class func sumTransactionTotals(_ transactions : List<GenericTransaction>) -> Double {
        var sum : Double = 0.0
    
        for trans in transactions {
            sum += trans.totalCost
        }
    
        return sum
    }

    class func getCurrentDate() -> (day: Int, month: Int, year: Int) {
        let date       = Date()
        let calendar   = Calendar.current
        let components = (calendar as NSCalendar).components([.day, .month, .year], from: date)
    
        return (components.day!, components.month!, components.year!)
    }
}

extension Double {
    func toCurrency() -> String {
        let f = ".2"
        return String(format: "%\(f)f", self)
    }
}
