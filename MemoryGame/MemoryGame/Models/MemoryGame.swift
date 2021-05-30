//
//  MemoryGame.swift
//  WelcomeScreen
//
//  Created by Prasad on 5/29/21.
//

import Foundation

struct MemoryGame <CardContent> where CardContent: Equatable {
    private(set) var cards: Array<Card>
    var indexOfFaceUpCard: Int?
    
    mutating func choose(_ card: Card) {
        guard let choosenIndex = cards.firstIndex(where: { $0.id == card.id }),
              !cards[choosenIndex].isFaceUp,
              !cards[choosenIndex].isMatched else { return }
        
        if let potentialMatchIndex = indexOfFaceUpCard {
            if (cards[potentialMatchIndex].content == cards[choosenIndex].content) {
                cards[potentialMatchIndex].isMatched = true
                cards[choosenIndex].isMatched = true
            }
            indexOfFaceUpCard = nil
        } else {
            for index in cards.indices {
                cards[index].isFaceUp = false
            }
            indexOfFaceUpCard = choosenIndex
        }
        
        cards[choosenIndex].isFaceUp.toggle()
    }

    init(numberOfPairsOfCard: Int, createCardContent: (Int) -> CardContent) {
        cards = Array<Card>()
        
        for pairIndex in 0..<numberOfPairsOfCard {
            let content = createCardContent(pairIndex)
            cards.append(Card(content: content, id: pairIndex*2))
            cards.append(Card(content: content, id: pairIndex*2+1))
        }
        cards.shuffle()
    }
    
    struct Card: Identifiable {
        
        var isFaceUp: Bool = false
        var isMatched: Bool = false
        var content: CardContent
        var id: Int
    }
}
