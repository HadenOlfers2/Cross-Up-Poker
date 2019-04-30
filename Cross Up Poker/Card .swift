//
//  Card .swift
//  Cross Up Poker
//
//  Created by Olfers, Haden W on 4/23/19.
//  Copyright © 2019 Olfers, Haden W. All rights reserved.
//

import Foundation
import UIKit

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

/*twoclubs
twodiamonds
twohearts
twospades
threeclubs
threediamonds
threehearts
threespades
fourclubs
Fourdiamonds
fourhearts
fourspades
Fiveclubs
Fivediamonds
Fivehearts
Fivespades
Sixclubs
Sixdiamonds
Sixhearts
Sixspades
Sevenclubs
Sevendiamonds
Sevenhearts
Sevenspades
Eightclubs
Eightdiamonds
Eighthearts
Eightspades
Nineclubs
Ninediamonds
Ninehearts
Ninespades
Tenclubs
Tendiamonds
Tenhearts
Tenspades
Jackclubs
Jackdiamonds
Jackhearts
Jackspades
Queenclubs
Queendiamonds
Queenhearts
Queenspades
Kingclubs
Kingdiamonds
Kinghearts
Kingspades
Aceclubs
Acediamonds
Acehearts
Acespades
*/
