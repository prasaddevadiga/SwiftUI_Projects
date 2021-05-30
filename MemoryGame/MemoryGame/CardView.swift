//
//  CardView.swift
//  WelcomeScreen
//
//  Created by Prasad on 5/29/21.
//

import SwiftUI

struct CardView: View {
    
    let card: MemoryGame<String>.Card
    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 25.0)
            if card.isFaceUp {
                shape.stroke(lineWidth: 3.0)
                shape.fill().foregroundColor(.white)
                Text(card.content).font(.largeTitle)
            } else if card.isMatched {
                shape.opacity(0.0)
            } else {
                shape.fill()
            }
        }
    }
}
