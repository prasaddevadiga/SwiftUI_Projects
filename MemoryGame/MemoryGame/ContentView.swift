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
        VStack {
            Text("Card Game").font(.largeTitle).padding(.vertical)
            ZStack {
                RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 3).foregroundColor(.blue)
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 40, maximum: 300)), ]) {
                    ForEach(viewModel.cards) { card in
                        CardView(card: card).aspectRatio(3/4, contentMode: .fill)
                            .onTapGesture {
                                viewModel.choose(card)
                            }
                    }
                }
                .foregroundColor(.secondary)
                .padding(8)
                Spacer()
            }.padding(.all)
            Spacer()
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
