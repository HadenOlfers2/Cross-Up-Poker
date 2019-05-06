//
//  Point.swift
//  Cross Up Poker
//
//  Created by Wang, Brandon L on 5/6/19.
//  Copyright © 2019 Olfers, Haden W. All rights reserved.
//

import Foundation

class Points
{
    //Function: Take in a 5x5 array of card values, and evaluate every hand and return the total
    func getPoints(cards: [[Card]]) -> Int
    {
        var total: Int = 0
        //Iterate through the rows
        for row in cards
        {
            //Evaluate
            total = total + getHandValue(cards: row)
        }
        
        var column: [Card] = []
        
        //column.append(cards[j][i])
        //Iterate through the columns
        for i in 0...4
        {
            for j in 0...4
            {
                column.append(cards[j][i])
            }
            //Evaluate
            total = total + getHandValue(cards: column)
        }
        
        return total
    }
    
    func getHandValue(cards: [Card]) -> Int
    {
        var identicalCards: Int = 0 //To be used when evaluating two, three, or four of a kind. Evaluates card values only
        var values: [Value] = [] //An array of JUST the card values
        var suits: [Suit] = []
        
        for i in 0...4
        {
            values.append(cards[i].value)
            suits.append(cards[i].suit)
        }
        
        //Hand is a royal flush
        if (values.contains(.ace) && values.contains(.king) && values.contains(.queen) && values.contains(.jack) && values.contains(.ten) &&
            suits[0] == suits[1] && suits[1] == suits[2] && suits[2] == suits[3] && suits[3] == suits[4])
        {
            return 9
        }
        
        //Hand is a straight flush
        //TODO
        
        //Hand is a four of a kind. This is where we evaluate identicalCards
        identicalCards = getIdenticalCards(values: values)
        if (identicalCards == 4) { return 7 }
        
        //Hand is a full house. Can be identified if there are only 2 unique values and there is a three of a kind
        //TODO
        
        //Hand is a flush
        if (suits[0] == suits[1] && suits[1] == suits[2] && suits[2] == suits[3] && suits[3] == suits[4])
        {
            return 5
        }
        
        //Hand is a straight
        //TODO
        
        //Hand is a three of a kind
        if (identicalCards == 3) { return 3 }
        
        //Hand is a two pair
        //TODO, this will be tough
        
        //Hand is a pair
        if (identicalCards == 2) { return 1 }
        
        //Hand is a high card
        return 0
    }
    
    func getIdenticalCards(values: [Value]) -> Int
    {
        var greatest: Int = 0 //Holds the max values of identical cards
        
        for i in 0...4
        {
            var currentGreatest: Int = 0
            for j in 0...4
            {
                if (j == i) { continue }
                if (values[i] == values[j]) { currentGreatest = currentGreatest + 1 }
            }
            
            if (currentGreatest > greatest) { greatest = currentGreatest }
        }
        return greatest
    }
    
    func sortHand(cards: [Card], values: [Value]) -> [Card]
    {
        //TODO. Will be tough with enums, but maybe using two arrays will make it work
        var enums: [Value] = [.ace, .two, .three, .four, .five, .six, .seven, .eight, .nine, .ten, .jack, .queen, .king]
        var values: [Int] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]
        return []
    }
    
    //Takes a SORTED array of cards and determines if it is consecutive
    func isConsecutive(cards: [Card])
    {
        
    }
}
