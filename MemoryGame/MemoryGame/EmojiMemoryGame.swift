//
//  EmojiMemoryGame.swift
//  WelcomeScreen
//
//  Created by Prasad on 5/29/21.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    static var myEmojis = ["🚃", "🚌", "🚜", "✈️","♿️", "📵", "🚹", "🚷","☑️", "🔴", "😴", "🥔"]
    
    @Published private var model: MemoryGame<String> = MemoryGame<String>(numberOfPairsOfCard: 5) { index in
        myEmojis[index]
    }
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    
    //MARK:- Intents -
    func choose(_ card: MemoryGame<String>.Card) {
        model.choose(card)
    }
}
