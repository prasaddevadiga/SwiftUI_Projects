//
//  DataStoreViewModel.swift
//  TodoListCoreData
//
//  Created by Prasad on 6/14/21.
//

import Foundation
import CoreData
import SwiftUI

class DataStoreViewModel: ObservableObject {
    
    private var viewContext = PersistenceController.shared.container.viewContext
    @FetchRequest(sortDescriptors: [NSSortDescriptor(keyPath: \Task.date, ascending: true)])
    var tasks: FetchedResults<Task>
    
    fileprivate func saveContext() {
        do {
            try viewContext.save()
        }
        catch {
            fatalError("\(error)")
        }
    }
    
    func addTask() {
        let newTask = Task(context: viewContext)
        newTask.title = "new task \(Date())"
        newTask.date = Date()
        saveContext()
    }
    
    func deleteTask(offsets: IndexSet) {
        offsets.map{ tasks[$0] }.forEach(viewContext.delete)
        saveContext()
    }
    
    func updateTask(_ task: FetchedResults<Task>.Element) {
        task.title = "updated"
        saveContext()
    }
}
