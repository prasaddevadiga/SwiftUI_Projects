//
//  OnboardingScreen.swift
//  SwiftUIScreenBootCamp
//
//  Created by Prasad on 7/3/21.
//

import SwiftUI

struct OnboardingScreen: View {
    @Binding var isPresenting: Bool
    var onboardViewModel: OnboardCardViewModel
    var body: some View {
        VStack {
            TabView {
                ForEach(onboardViewModel.cards) { card in
                    OBCardView(isShowing: $isPresenting,
                               card: card,
                               width: onboardViewModel.width,
                               height: onboardViewModel.height)
                }
            }
            .frame(height: onboardViewModel.height + 120)
            .tabViewStyle(PageTabViewStyle())
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
            Spacer()
        }
    }
}

struct OnboardingScreen_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingScreen(isPresenting: .constant(true), onboardViewModel: OnboardCardViewModel.previewContent())
    }
}

