//
//  ContentView.swift
//  TodoListCoreData
//
//  Created by Prasad on 6/13/21.
//

import SwiftUI

struct ContentView: View {
   
    var body: some View {
        HomeScreen()
    }
}

struct HomeScreen: View {
    
    @Environment(\.managedObjectContext) private var viewContext
    
    @FetchRequest(sortDescriptors: [NSSortDescriptor(keyPath: \Task.date, ascending: true)])
    private var tasks: FetchedResults<Task>
    var body: some View {
        NavigationView {
            List {
                ForEach(tasks, id: \.self) { task in
                    Text(task.title ?? "untitled")
                        .onTapGesture(count: 1) {
                            updateTask(task)
                        }
                }
                .onDelete(perform: deleteTask)
            }
            .navigationTitle("Todo list")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(trailing: Button(action: {
                addTask()
            }, label: {
                Text("Add")
            }))
        }
    }
    
    fileprivate func saveContext() {
        do {
            try viewContext.save()
        }
        catch {
            fatalError("\(error)")
        }
    }
    
    func addTask() {
        withAnimation(.easeIn) {
            let newTask = Task(context: viewContext)
            newTask.title = "new task \(Date())"
            newTask.date = Date()
            saveContext()
        }
    }
    
    func deleteTask(offsets: IndexSet) {
        withAnimation(.easeInOut) {
            offsets.map{ tasks[$0] }.forEach(viewContext.delete)
            saveContext()
        }
    }
    
    func updateTask(_ task: FetchedResults<Task>.Element) {
        withAnimation{
            task.title = "updated"
            saveContext()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
