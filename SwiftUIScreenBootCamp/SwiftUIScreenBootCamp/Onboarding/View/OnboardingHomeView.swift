//
//  OnboardingView.swift
//  SwiftUIScreenBootCamp
//
//  Created by Prasad on 7/3/21.
//

import SwiftUI

struct OnboardingHomeView: View {
    
    @State var showOnboarding = false
    
    var onboardViewModel = OnboardData.buildSet(width: 300, height: 500)
    
    var body: some View {
        NavigationView {
            ZStack {
                if showOnboarding {
                    VStack {
                        Image("Teamwork")
                            .resizable()
                            .scaledToFit()
                        Text("This is demo onboarding screen and more stuffs to come")
                    }
                    .padding(.horizontal)
                    .ignoresSafeArea(edges: .bottom)
                    .disabled(showOnboarding)
                    .blur(radius: showOnboarding ? 5.0: 0)
                    .navigationTitle("Onboarding screens")
                    
                    OnboardingScreen(isPresenting: $showOnboarding, onboardViewModel: onboardViewModel)
                    
                } else {
                    LoginView()
                        .navigationTitle("Login screen")
                }
            }
            .onAppear(perform: {
                DispatchQueue.main.asyncAfter(deadline: .now()) {
                    withAnimation {
                        showOnboarding.toggle()
                    }
                }
            })
        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingHomeView()
    }
}
