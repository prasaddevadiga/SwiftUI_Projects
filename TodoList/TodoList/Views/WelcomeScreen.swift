//
//  WelcomeScreen.swift
//  TodoList
//
//  Created by Prasad on 6/22/21.
//

import SwiftUI

struct WelcomeScreen: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 10) {
                Spacer()
                Text("Experince the todo list")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Spacer()
                NavigationLink(
                    destination: SignupView(),
                    label: {
                        Text("Sign up")
                    })
                    .frame(height: 70)
                    .frame(maxWidth: .infinity)
                    .background(Color(red: 12.0/255, green: 170.0/255, blue: 204.0/255, opacity: 1.0))
                    .cornerRadius(10)
                    .foregroundColor(.white)
                    .font(.title2)
                
                NavigationLink(
                    destination: LoginView(),
                    label: {
                        Text("Sign in")
                            .padding()
                    })
                .frame(height: 70)
                .frame(maxWidth: .infinity)
                .foregroundColor(.black)
                .cornerRadius(10)
                .font(.title2)
            }
            .padding(.horizontal, 32)
        }
    }
}

struct WelcomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreen()
    }
}
