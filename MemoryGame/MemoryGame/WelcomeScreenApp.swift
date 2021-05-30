//
//  WelcomeScreenApp.swift
//  WelcomeScreen
//
//  Created by Prasad on 5/27/21.
//

import SwiftUI

@main
struct WelcomeScreenApp: App {
    let game = EmojiMemoryGame()
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
