//
//  Card .swift
//  Cross Up Poker
//
//  Created by Olfers, Haden W on 4/23/19.
//  Copyright © 2019 Olfers, Haden W. All rights reserved.
//

import Foundation
import UIKit

struct Card: Equatable
{
    var Img: UIImage?
    let suit: Suit
    var value: Int
    
    static func == (lhs: Card, rhs: Card) -> Bool
    {
        return (lhs.suit == rhs.suit) && (lhs.value == rhs.value)
    }
}

enum Suit
{
    case clubs
    case spades
    case diamonds
    case hearts
}

var deck: [Card] = generateDeck()
let numStrings = ["Ace", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten", "Jack", "Queen", "King"]

func generateDeck() -> [Card]
{
    var deck: [Card] = []
    for i in 1...13
    {
        deck.append(Card(Img: UIImage.self(named: numStrings[i-1] + "clubs"), suit: .clubs, value: i))
    }
    
    for i in 1...13
    {
        deck.append(Card(Img: UIImage.self(named: numStrings[i-1] + "spades"), suit: .spades, value: i))
    }
    
    for i in 1...13
    {
        deck.append(Card(Img: UIImage.self(named: numStrings[i-1] + "hearts"), suit: .hearts, value: i))
    }
    
    for i in 1...13
    {
        deck.append(Card(Img: UIImage.self(named: numStrings[i-1] + "diamonds"), suit: .diamonds, value: i))
    }
    return deck
}
