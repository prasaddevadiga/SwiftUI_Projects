//
//  Persistence.swift
//  TodoListCoreData
//
//  Created by Prasad on 6/13/21.
//

import Foundation
import CoreData

struct PersistenceController {
    static let shared = PersistenceController()
    let container: NSPersistentContainer
    
    init() {
        container = NSPersistentContainer(name: "TodoList")
        container.loadPersistentStores { (storeDiscription, error) in
            if let error = error as NSError? {
                fatalError("unresolved error\(error)")
            }
        }
    }
}
