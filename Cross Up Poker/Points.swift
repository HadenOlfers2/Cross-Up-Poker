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
            print(getHandValue(cards: row))
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
            print(getHandValue(cards: column))
        }
        
        return total
    }
    
    func getHandValue(cards: [Card]) -> Int
    {
        var identicalCards: Int = 0 //To be used when evaluating two, three, or four of a kind. Evaluates card values only
        var sameSuits: Bool = true
        var values: [Int] = [] //An array of JUST the card values
        var suits: [Suit] = []
        
        for i in 0...4
        {
            values.append(cards[i].value)
            suits.append(cards[i].suit)
        }
        
        for i in 0...3
        {
            if (suits[i] != suits[i+1])
            {
                sameSuits = false
            }
        }
        
        //Hand is a royal flush
        if (values.contains(1) && values.contains(13) && values.contains(12) && values.contains(11) && values.contains(10) &&
            sameSuits)
        {
            return 9
        }
        
        let sortedValues: [Int] = sortHand(cards: cards, values: values)
        
        //Hand is a straight flush
        if (sameSuits && isConsecutive(values: sortedValues))
        {
            return 8
        }
        
        //Hand is a four of a kind. This is where we evaluate identicalCards
        identicalCards = getIdenticalCards(values: values)
        if (identicalCards == 4)
        {
            return 7
        }
        
        //Hand is a full house. Can be identified if there are only 2 unique values and there is a three of a kind
        if (getNumUnique(values:values) == 2 && identicalCards == 3)
        {
            return 6
        }
        
        //Hand is a flush
        if (sameSuits)
        {
            return 5
        }
        
        //Hand is a straight
        if (isConsecutive(values: sortedValues))
        {
            return 4
        }
        
        //Hand is a three of a kind
        if (identicalCards == 3)
        {
            return 3
        }
        
        //Hand is a two pair
        if (identicalCards == 2 && getNumUnique(values: values) == 3)
        {
            return 2
        }
        
        //Hand is a pair
        if (identicalCards == 2)
        {
            return 1
        }
        
        //Hand is a high card
        return 0
    }
    
    //Returns the number of cards with an identical VALUE
    func getIdenticalCards(values: [Int]) -> Int
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
        print("\(values) identical cards: \(greatest)")
        
        return greatest+1 //I dunno, they all seemed to be off by 1 so i incremented
    }
    
    //Returns a sorted VALUES array
    func sortHand(cards: [Card], values: [Int]) -> [Int]
    {
        var returnValues: [Int] = values
        var min: Int //Index of min
        for i in 0...3
        {
            min = i
            for j in i+1...4
            {
                if (values[j] < values[i])
                {
                    min = j
                }
            }
            let temp = returnValues[i]
            returnValues[i] = returnValues[min]
            returnValues[min] = temp
        }
        return returnValues
    }
    
    //Takes a SORTED array of values and determines if it is consecutive
    func isConsecutive(values: [Int]) -> Bool
    {
        for i in 1...values.count
        {
            if (values[0] != values[i]-1)
            {
                return false
            }
        }
        return true
    }
    
    //Returns the number of unique values. Ex. A3AA3 returns 2
    func getNumUnique(values: [Int]) -> Int
    {
        var uniqueValues: [Int] = []
        for i in 0...4
        {
            if (uniqueValues.contains(values[i]) == false)
            {
                uniqueValues.append(values[i])
            }
        }
        return uniqueValues.count
    }
}
