//
//  ContentView.swift
//  TodoList
//
//  Created by Prasad on 6/22/21.
//

import SwiftUI

struct UserProfileView: View {
    @StateObject private var viewModel =  UserProfileViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Text(viewModel.userName)
                    Spacer()
                }
                Spacer()
            }
            .padding()
            .navigationTitle("Profile")
            .onAppear(perform: {
                viewModel.onAppear()
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        UserProfileView()
    }
}
