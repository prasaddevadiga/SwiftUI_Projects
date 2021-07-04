//
//  OnboardCardViewModel.swift
//  SwiftUIScreenBootCamp
//
//  Created by Prasad on 7/3/21.
//

import UIKit

class OnboardCardViewModel {
    private(set) var cards: [OnboardCard] = []
    private(set) var width: CGFloat = 350
    private(set) var height: CGFloat = 350
        
    func dimension(width: CGFloat, height: CGFloat) {
        self.width = width
        self.height = height
    }
    
    func newCard(title: String, image: String, text: String) {
        cards.append(OnboardCard(title: title, text: text, image: image))
    }
}

extension OnboardCardViewModel {
    static func previewContent() -> OnboardCardViewModel {
        let viewModel = OnboardCardViewModel()
        viewModel.newCard(title: "Login", image: "Login", text: "Enter your credentials and log in.")
        viewModel.newCard(title: "Update Profile", image: "Profile", text: "Make sure you update your profile and avatar.")
        viewModel.newCard(title: "Participate", image: "Engage", text: "Engage with others online.  Join the community.")
        viewModel.newCard(title: "Leave Feedback", image: "LeaveFeedback", text: "We want to hear from you so please let us know what you think.")
        viewModel.newCard(title: "Your Data", image: "Analytics", text: "Your data is your own.  View your stats at any time.")
        return viewModel
    }
}
