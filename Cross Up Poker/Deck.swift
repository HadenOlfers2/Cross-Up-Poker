//
//  Deck.swift
//  Cross Up Poker
//
//  Created by Wang, Brandon L on 5/16/19.
//  Copyright © 2019 Olfers, Haden W. All rights reserved.
//

import Foundation
import UIKit

class Deck
{
    var deck: [Card]
    init()
    {
        deck = []
        let numStrings = ["Ace", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten", "Jack", "Queen", "King"]
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
        for i in 0...deck.count-1
        {
            let j = Int.random(in: 0...deck.count-1)
            let tempCard = deck[i]
            deck[i] = deck[j]
            deck[j] = tempCard
        }
    }
    
    func generateDeck() -> [Card]
    {
        let numStrings = ["Ace", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten", "Jack", "Queen", "King"]
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
        deck = shuffleDeck(deck: deck)
        return deck
    }
    
    //Random swap algorithm
    func shuffleDeck(deck: [Card]) -> [Card]
    {
        var tempDeck = deck
        for i in 0...deck.count-1
        {
            let j = Int.random(in: 0...deck.count-1)
            let tempCard = tempDeck[i]
            tempDeck[i] = tempDeck[j]
            tempDeck[j] = tempCard
        }
        return tempDeck
    }
}
