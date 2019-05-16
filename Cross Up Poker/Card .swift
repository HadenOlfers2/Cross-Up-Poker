//
//  Card .swift
//  Cross Up Poker
//
//  Created by Olfers, Haden W on 4/23/19.
//  Copyright © 2019 Olfers, Haden W. All rights reserved.
//

import Foundation
import UIKit

struct Card: Equatable, CustomStringConvertible
{
    var Img: UIImage?
    let suit: Suit
    var value: Int
    
    static func == (lhs: Card, rhs: Card) -> Bool
    {
        return (lhs.suit == rhs.suit) && (lhs.value == rhs.value)
    }
    
    public var description: String
    {
        return String(value)
    }
}

enum Suit
{
    case clubs
    case spades
    case diamonds
    case hearts
}
