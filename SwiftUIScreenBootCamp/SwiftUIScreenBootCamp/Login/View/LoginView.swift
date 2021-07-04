//
//  Loginview.swift
//  SwiftUIScreenBootCamp
//
//  Created by Prasad on 7/3/21.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject var authenticationVM = Authentication()
    
    var body: some View {
        ZStack {
            if authenticationVM.isValidated {
                LoggedInScreen()
                    .environmentObject(authenticationVM)
            } else {
                LoginScreen()
                    .environmentObject(authenticationVM)
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

struct LoginScreen: View {
    @EnvironmentObject var authenticationVM: Authentication
    @StateObject var loginVM = LoginViewModel()
    
    var body: some View {
        VStack {
            Text("My Secure App")
                .font(.largeTitle)
            
            VStack(spacing: 20) {
                TextField("Email Address", text: $loginVM.credenntials.email)
                    .keyboardType(.emailAddress)
                    .frame(height: 50)
                SecureField("Password", text: $loginVM.credenntials.password)
                    .frame(height: 50)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 100)
            if loginVM.showProgressView {
                ProgressView()
            }
            
            Button(action: {
                loginVM.login { (success) in
                    authenticationVM.updateValidation(success: success)
                }
            }){
                Text("Login")
                    .padding()
                    .padding(.horizontal, 16)
                    .background(Color.white)
                    .cornerRadius(5)
                    .shadow(radius: 10)
                
            }
            .disabled(loginVM.loginDisabled)
            .padding(.bottom, 20)
            
            Image("LaunchScreen")
                .onTapGesture {
                    UIApplication.shared.endEditing()
                }
            Spacer()
        }
        .autocapitalization(.none)
        .textFieldStyle(RoundedBorderTextFieldStyle())
        .padding()
        .disabled(loginVM.showProgressView)
        .alert(item: $loginVM.error) { error in
            Alert(title: Text("Invalid login"), message: Text(error.localizedDescription))
        }
    }
}
