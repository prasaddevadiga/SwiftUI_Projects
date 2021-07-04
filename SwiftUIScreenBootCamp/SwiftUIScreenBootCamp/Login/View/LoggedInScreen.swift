//
//  LoggedInScreen.swift
//  SwiftUIScreenBootCamp
//
//  Created by Prasad on 7/3/21.
//

import SwiftUI

struct LoggedInScreen: View {
    
    @EnvironmentObject var authenticator: Authentication
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Authorized !! you are in")
                    .font(.largeTitle)
                Image("Inside")
            }
            .padding()
            .navigationTitle("My secure app")
            .toolbar(content: {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Logout") {
                        authenticator.updateValidation(success: false)
                    }
                }
            })
        }
        
    }
}

struct LoggedInScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoggedInScreen()
    }
}
