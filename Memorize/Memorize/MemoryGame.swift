//
//  MemoryGame.swift
//  Memorize
//
//  Created by 민지 on 2022/04/03.
//

import Foundation

struct MemoryGame<CardContent>{
    var cards: Array<Card>
    
    func choose(_ card:Card){
        
    }
    
    init(numberOfPairsOfCards: Int, createCardContent: (Int) -> CardContent) {
        cards = Array<Card>()
        // add numberOfPairsOfCards x 2
        for pairIndex in 0..<numberOfPairsOfCards{
            let content: CardContent = createCardContent(pairIndex)
            cards.append(Card(content: content))
            cards.append(Card(content: content))
        }
    }
    
    struct Card{
        var isFaceUp : Bool = false
        var isMatched : Bool = false
        var content: CardContent
    }
}
