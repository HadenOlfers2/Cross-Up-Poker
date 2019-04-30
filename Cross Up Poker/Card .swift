//
//  Card .swift
//  Cross Up Poker
//
//  Created by Olfers, Haden W on 4/23/19.
//  Copyright © 2019 Olfers, Haden W. All rights reserved.
//

import Foundation

    struct Card {
    let suit: Suit
    var value: Value
    }

    enum Suit {
        case clubs
        case spades
        case diamonds
        case hearts
    }

    enum Value {
        case ace,two,three,four,five,six,seven,eight,nine,ten,jack,queen,king
    }




