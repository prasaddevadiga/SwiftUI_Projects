//
//  LoginView.swift
//  TodoList
//
//  Created by Prasad on 6/22/21.
//

import SwiftUI

struct LoginView: View {
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    @State var emailAddress: String = ""
    @State var password: String = ""
    
    var body: some View {
        VStack (alignment:.leading){
            
            Button(action: {
                self.mode.wrappedValue.dismiss()
            }, label: {
                ZStack{
                    Rectangle()
                        .frame(width: 100, height: 50)
                        .opacity(0.2)
                    
                    Image(systemName: "chevron.left")
                }
            })
            .padding(.top, 50)
            VStack(alignment:.leading) {
                Text("Hello Again! \nWelcom \nback")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .padding(.bottom)
                
                Button(action: {}, label: {
                    Image(systemName: "person.circle")
                        .resizable()
                })
                .frame(width: 100, height: 100, alignment: .center)
            }
            .padding(.leading)
            .padding(.bottom, 50)
            
            VStack (spacing:16) {
                TextField("    Email Address", text: $emailAddress)
                    .frame(height: 60)
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(color: Color.black.opacity(0.5), radius: 5, x: 1, y: 1)
                TextField("    Password", text: $password)
                    .frame(height: 60)
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(color: Color.black.opacity(0.5), radius: 5, x: 1, y: 1)
            }
            .padding(.horizontal, 20)
            
            Button(action: {
                
            }, label: {
                Text("Sign up")
                    .fontWeight(.bold)
                    .font(.title2)
            })
            .frame(height: 70)
            .frame(maxWidth: .infinity)
            .background(Color(red: 12.0/255, green: 170.0/255, blue: 204.0/255, opacity: 1.0))
            .cornerRadius(10)
            .foregroundColor(.white)
            
            .padding(.top, 32)
            .padding(.horizontal, 20)
            Spacer()
        }
        .background(Color(red: 251/255, green: 251/255, blue: 251/255, opacity: 1))
        .ignoresSafeArea()
        .navigationBarHidden(true)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
