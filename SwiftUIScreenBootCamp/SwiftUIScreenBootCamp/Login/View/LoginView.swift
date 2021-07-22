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

struct FacebookView: View {
    var body: some View {
        VStack {
            HStack {
                Rectangle()
                    .frame(height: 1)
                Text("Or")
                Rectangle()
                    .frame(height: 1)
            }
            .foregroundColor(.white)
            
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .fill(
                        LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.2797298885, green: 0.1850652825, blue: 1, alpha: 1)), Color(#colorLiteral(red: 0.2551114903, green: 0.5799509595, blue: 0.771413028, alpha: 1))]),
                                       startPoint: .leading,
                                       endPoint: .trailing)
                    )
                    .frame(height: 60)
                Text("Continue with Facebook")
                    .font(.system(size: 20, weight: .bold, design: .rounded))
                    .foregroundColor(.white)
            }
            .cornerRadius(5.0)
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader { geometry in
            ZStack() {
                Image("background")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .ignoresSafeArea()
                    .frame(width: geometry.size.width, height: geometry.size.height)
                LoginView()
            }
        }
    }
}

struct LoginScreen: View {
    @EnvironmentObject var authenticationVM: Authentication
    @StateObject var loginVM = LoginViewModel()
    
    var body: some View {
        ZStack {
            Color.black
                .opacity(0.5)
                .blur(radius: 3.0)
                .ignoresSafeArea()
            VStack {
                VStack {
                    Text("Log In")
                        .font(.system(size: 28, weight: .bold, design: .rounded))
                        .padding(.vertical, 20)
                    VStack(spacing: 20) {
                        HStack {
                            Image(systemName: "person.fill")
                            TextField("UserName", text: $loginVM.credenntials.email)
                                .font(.system(size: 20, weight: .heavy, design: .rounded))
                        }
                        .foregroundColor(.gray)
                        .padding()
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(lineWidth: 2)
                                .foregroundColor(Color.gray.opacity(0.1))
                        )
                        
                        HStack {
                            Image(systemName: "lock.fill")
                            SecureField("Password", text: $loginVM.credenntials.password)
                                .font(.system(size: 20, weight:.heavy, design: .rounded))
                        }
                        .foregroundColor(.gray)
                        .padding()
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(lineWidth: 2)
                                .foregroundColor(Color.gray.opacity(0.1))
                        )
                        .padding(.bottom, 20)
                        
                        Button(action: {
                            loginVM.login { (success) in
                                authenticationVM.updateValidation(success: success)
                            }
                        }, label: {
                            ZStack {
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(Color.red)
                                    .frame(height: 60)
                                Text("Log In")
                                    .font(.system(size: 20, weight: .bold, design: .rounded))
                                    .foregroundColor(.white)
                            }
                        })
                        .disabled(loginVM.loginDisabled)
                    }
                    .padding()
                    if loginVM.showProgressView {
                        ProgressView().padding()
                    }
                }
                .background(Color.white)
                .padding(.bottom, 10)
                .cornerRadius(10)
                .shadow(color: Color.black.opacity(0.6), radius: 10, x: 0.0, y: 0.0)
                
                FacebookView()
            }
            .autocapitalization(.none)
            .padding()
            .disabled(loginVM.showProgressView)
            .alert(item: $loginVM.error) { error in
                Alert(title: Text("Invalid login"), message: Text(error.localizedDescription))
            }
        }
    }
}
