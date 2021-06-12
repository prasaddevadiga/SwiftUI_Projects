//
//  ContentView.swift
//  CustomTabBar
//
//  Created by Prasad on 6/11/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            CustomTabview()
        }
        .navigationTitle("")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(true)
    }
}

// tabviews

struct Folder: View {
    var body: some View {
        Text("Folder")
    }
}

struct Setting: View {
    var body: some View {
        Text("Setting")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



