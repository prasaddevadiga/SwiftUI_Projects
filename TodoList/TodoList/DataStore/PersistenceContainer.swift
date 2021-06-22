//
//  PersistenceContainer.swift
//  TodoList
//
//  Created by Prasad on 6/22/21.
//

import CoreData

class PersistenceContainer {
    static let shared = PersistenceContainer()
    let persistanceContainer: NSPersistentContainer
    
    init() {
        persistanceContainer = NSPersistentContainer(name: "TaskList")
        persistanceContainer.loadPersistentStores { (disc, error) in
            if let error = error {
                fatalError(error.localizedDescription)
            }
        }
    }
}
