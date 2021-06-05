//
//  ContentView.swift
//  SwiftTry
//
//  Created by Prasad on 5/30/21.
//

import SwiftUI
import MapKit

struct ContentView: View {
    
    let menu = Bundle.main.decode([MenuSection].self, from: "menu.json")
    
    var body: some View {
        NavigationView {
            List {
                ForEach(menu) { section in
                    Section(header: SectionView(sectionName: section.name)) {
                        ForEach(section.items) { item in
                            Text(item.name)
                        }
                    }
                }
            }
            .navigationTitle("Menu")
            .listStyle(GroupedListStyle())
        }
    }
}


struct SectionView: View {
    @State var sectionName: String
    
    var body: some View {
        Text(sectionName)
            .padding(5)
            .font(.headline)
            .cornerRadius(3.0)
            .foregroundColor(.red)
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
