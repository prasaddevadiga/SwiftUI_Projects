//
//  OnboardData.swift
//  SwiftUIScreenBootCamp
//
//  Created by Prasad on 7/3/21.
//

import UIKit

enum OnboardData {
    static func buildSet(width: CGFloat = 350, height: CGFloat = 350) -> OnboardCardViewModel {
        let onboardVM = OnboardCardViewModel()
        onboardVM.dimension(width: width, height: height)
        onboardVM.newCard(title: "Login", image: "Login", text: "Enter your credentials and log in.")
        onboardVM.newCard(title: "Update Profile", image: "Profile", text: "Make sure you update your profile and avatar.")
        onboardVM.newCard(title: "Participate", image: "Engage", text: "Engage with others online.  Join the community.")
        onboardVM.newCard(title: "Leave Feedback", image: "LeaveFeedback", text: "We want to hear from you so please let us know what you think.")
        onboardVM.newCard(title: "Your Data", image: "Analytics", text: "Your data is your own.  View your stats at any time.")
        return onboardVM
    }
}
