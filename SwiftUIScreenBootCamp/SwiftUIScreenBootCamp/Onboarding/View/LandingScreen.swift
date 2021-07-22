//
//  LandingScreen.swift
//  SwiftUIScreenBootCamp
//
//  Created by Prasad on 7/4/21.
//

import SwiftUI

struct LandingScreen: View {
    @State var isLoginVisible: Bool = false
    @State var isSignupVisible: Bool = false
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                Image("background")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .ignoresSafeArea()
                    .frame(width: geometry.size.width, height: geometry.size.height)
                
                if isLoginVisible {
                    LoginView()
                } else {
                    VStack {
                        Spacer()
                        SinupButtonView(isLoginVisible: $isLoginVisible, isSignupVisible: $isSignupVisible)
                    }
                }
            }
        }
    }
}

struct LandingScreen_Previews: PreviewProvider {
    static var previews: some View {
        LandingScreen(isLoginVisible: false, isSignupVisible: false)
    }
}

struct SinupButtonView: View {
    @Binding var isLoginVisible: Bool
    @Binding var isSignupVisible: Bool
    
    var body: some View {
        HStack(spacing: 20) {
            Button(action: {
                withAnimation {
                    isLoginVisible.toggle()
                }
            }, label: {
                Text("Log In")
                    .font(.system(size: 28, weight: .black, design: .rounded))
                    .fontWeight(.semibold)
                    .padding(.horizontal)
            })
            .padding()
            .padding(.horizontal)
            .background(Color.black.opacity(0.4))
            .foregroundColor(.white)
            .cornerRadius(10)
            
            Button(action: {
                withAnimation {
                    isSignupVisible.toggle()
                }
            }, label: {
                Text("Sign up")
                    .font(.system(size: 28, weight: .black, design: .rounded))
                    .fontWeight(.semibold)
                    .padding(.horizontal)
            })
            .padding()
            .padding(.horizontal)
            .background(Color.black.opacity(0.4).blur(radius: 2.0))
            .foregroundColor(.white)
            .cornerRadius(10)
        }
        .foregroundColor(.white)
    }
}
