//
//  ContentView.swift
//  WelcomeScreen
//
//  Created by Prasad on 5/27/21.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel: EmojiMemoryGame
    var body: some View {
        ScrollView {
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 80, maximum: 300)), ]) {
                ForEach(viewModel.cards) { card in
                    CardView(card: card).aspectRatio(2/3, contentMode: .fill)
                        .onTapGesture {
                            viewModel.choose(card)
                        }
                }
            }
            .foregroundColor(.red)
            .padding(8)
        }
    }
}




















struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let game = EmojiMemoryGame()
        ContentView(viewModel: game)
            .preferredColorScheme(.light)
            .previewDevice("iPhone 12 Pro")
        ContentView(viewModel: game)
            .preferredColorScheme(.dark)
            .previewDevice("iPhone 12 Pro")
    }
}
