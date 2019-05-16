//
//  CPU.swift
//  Cross Up Poker
//
//  Created by Wang, Brandon L on 5/16/19.
//  Copyright © 2019 Olfers, Haden W. All rights reserved.
//

import Foundation

class CPU
{
    func getCpuHand() -> Int
    {
        let cpuDeck = Deck()
        var cpuHand: [[Card]]
        for i in 0...4
        {
            var row: [Card] = []
            for j in 0...4
            {
                row.append(cpuDeck.remove()!)
            }
            cpuHand.append(row)
        }
        return getPoints(cards: cpuHand)
    }
}
