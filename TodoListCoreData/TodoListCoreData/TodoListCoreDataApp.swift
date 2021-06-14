//
//  TodoListCoreDataApp.swift
//  TodoListCoreData
//
//  Created by Prasad on 6/13/21.
//

import SwiftUI

@main
struct TodoListCoreDataApp: App {
    let persistenceController = PersistenceController.shared
    var body: some Scene {
        
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
