//
//  Repository.swift
//  FirstBudget
//
//  Created by Nicholas Tallents on 4/9/16.
//  Copyright © 2016 Nicholas Tallents. All rights reserved.
//

import Foundation
import RealmSwift

class Repository {
    /*
    // Generic Repository functions
    func addSave(obj : GenericModel, objType : String) {
        let pkc = getPrimaryKeyCounter(objType)
        
        obj.id  = pkc.value
        try! realm.write {
            pkc.value += 1
            realm.add(obj)
        }
    }
    
    func editSave(obj : GenericModel) {
        try! realm.write {
            realm.add(obj, update: true)
        }
    }
    
    func deleteSave(obj : GenericModel) {
        try! realm.write {
            realm.delete(obj)
        }
    }
    */
    
    class func deleteDB() {
        let realm = try! Realm()
        try! realm.write {
            realm.deleteAll()
        }
    }
    
    class func getPrimaryKeyCounter(_ key : String) -> PrimaryKeyCounter {
        let realm = try! Realm()
        return realm.objects(PrimaryKeyCounter.self).filter("key = %@", key)[0]
    }
    
    class func seedDB() {
        let realm  = try! Realm()
        let pkKeys = ["GenericModel", "Budget", "BudgetCategory", "GenericTransaction", "Bill", "OneTimeTransaction"]
        
        for key in pkKeys {
            let predicateString = "key = \"\(key)\""
            let temp = realm.objects(PrimaryKeyCounter.self).filter(predicateString)
            
            // Seed Primary Key Counter if keys don't already exist
            if temp.count == 0 {
                let pk = PrimaryKeyCounter()
                pk.key = key
                pk.value = 0
                
                try! realm.write {
                    realm.add(pk)
                }
            }
        }

        
    }
}
