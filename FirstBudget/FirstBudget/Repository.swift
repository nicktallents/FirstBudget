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
    let realm = try! Realm()
    
    // Budget Queries
    
    // BudgetCategory Queries
    
    // Transaction Queries
    
    
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
    
    private func getPrimaryKeyCounter(key : String) -> PrimaryKeyCounter {
        return realm.objects(PrimaryKeyCounter).filter("key = %@", key)[0]
    }
}