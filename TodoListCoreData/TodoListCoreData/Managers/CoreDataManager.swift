//
//  CoreDataManager.swift
//  TodoListCoreData
//
//  Created by Prasad on 6/14/21.
//

import Foundation
import CoreData

class CoreDataManager {
    let persistentContainer: NSPersistentContainer
    
    init() {
        persistentContainer = NSPersistentContainer(name: "TodoList")
        persistentContainer.loadPersistentStores { (storeDiscription, error) in
            if let error = error {
                fatalError("\(error.localizedDescription)")
            }
        }
    }
}
