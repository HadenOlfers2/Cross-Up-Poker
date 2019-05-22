//
//  CPU.swift
//  Cross Up Poker
//
//  Created by Wang, Brandon L on 5/16/19.
//  Copyright © 2019 Olfers, Haden W. All rights reserved.
//

import Foundation

func getCpuHand(deck: Deck) -> Int
{
    var cpuHand: [[Card]] = [[Card]]()
    for i in 0...4
    {
        var row: [Card] = []
        for _ in 0...4
        {
            row.append(deck.remove())
        }
        cpuHand.append(row)
        print("\(cpuHand[i]) \(i)")
    }
    return getPoints(cards: cpuHand)
}
