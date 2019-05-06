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
    var Img: UIImage?
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

let Deck = [twoClubs,twoDiamonds,twoHearts,twoSpades,threeClubs,threeDiamonds,threeHearts,threeSpades,fourClubs,FourDiamonds,fourHearts,fourSpades,FiveClubs,FiveDiamonds,FiveHearts,FiveSpades,SixClubs,SixDiamonds,SixHearts,SixSpades,SevenClubs,SevenDiamonds,SevenHearts,SevenSpades,EightClubs,EightDiamonds,EightHearts,EightSpades,NineClubs,Ninediamonds,NineHearts,NineSpades,TenClubs,TenDiamonds,TenHearts,TenSpades,JackClubs,JackDiamonds,JackHearts,JackSpades,QueenClubs,QueenDiamonds,QueenHearts,QueenSpades,KingClubs,KingDiamonds,KingHearts,KingSpades,AceClubs,AceDiamonds,AceHearts,AceSpades]

var twoClubs = Card(Img: UIImage.self(named:"twoclubs"), suit:.clubs, value:.two)
var twoDiamonds = Card(Img: UIImage.self(named:"twodiamonds"), suit:.diamonds, value:.two)
var twoHearts = Card(Img: UIImage.self(named:"twohearts"),suit:.hearts, value:.two)
var twoSpades = Card(Img: UIImage.self(named:"twospades"),suit:.spades, value:.two)
var threeClubs = Card(Img: UIImage.self(named:"threeclubs"),suit:.clubs, value:.three)
var threeDiamonds = Card(Img: UIImage.self(named:"threediamonds"),suit:.diamonds, value:.three)
var threeHearts = Card(Img: UIImage.self(named:"threeHearts"),suit:.hearts, value:.three)
var threeSpades = Card(Img: UIImage.self(named:"threespades"),suit:.spades, value:.three)
var fourClubs = Card(Img: UIImage.self(named:"fourclubs"),suit:.clubs, value:.four)
var FourDiamonds = Card(Img: UIImage.self(named:"Fourdiamonds"),suit:.diamonds, value:.four)
var fourHearts = Card(Img: UIImage.self(named:"fourhearts"),suit:.hearts, value:.four)
var fourSpades = Card(Img: UIImage.self(named:"fourspades"),suit:.spades, value:.four)
var FiveClubs = Card(Img: UIImage.self(named:"Fiveclubs"),suit:.clubs, value:.five)
var FiveDiamonds = Card(Img: UIImage.self(named:"Fivediamonds"),suit:.diamonds, value:.five)
var FiveHearts = Card(Img: UIImage.self(named:"FiveHearts"),suit:.hearts, value:.five)
var FiveSpades = Card(Img: UIImage.self(named:"Fivespades"),suit:.spades, value:.five)
var SixClubs = Card(Img: UIImage.self(named:"Sixclubs"),suit:.clubs, value:.six)
var SixDiamonds = Card(Img: UIImage.self(named:"Sixdiamonds"),suit:.diamonds, value:.six)
var SixHearts = Card(Img: UIImage.self(named:"Sixhearts"),suit:.hearts, value:.six)
var SixSpades = Card(Img: UIImage.self(named:"Sixspades"),suit:.spades, value:.six)
var SevenClubs = Card(Img: UIImage.self(named:"Sevenclubs"),suit:.clubs, value:.six)
var SevenDiamonds = Card(Img: UIImage.self(named:"Sevendiamonds"),suit:.diamonds, value:.seven)
var SevenHearts = Card(Img: UIImage.self(named:"Sevenhearts"),suit:.hearts, value:.seven)
var SevenSpades = Card(Img: UIImage.self(named:"Sevenspades"),suit:.spades, value:.seven)
var EightClubs = Card(Img: UIImage.self(named:"Eightclubs"),suit:.clubs, value:.seven)
var EightDiamonds = Card(Img: UIImage.self(named:"Eightdiamonds"),suit:.diamonds, value:.eight)
var EightHearts = Card(Img: UIImage.self(named:"Eighthearts"),suit:.hearts, value:.eight)
var EightSpades = Card(Img: UIImage.self(named:"Eightspades"),suit:.spades, value:.eight)
var NineClubs = Card(Img: UIImage.self(named:"Nineclubs"),suit:.clubs, value:.nine)
var Ninediamonds = Card(Img: UIImage.self(named:"Ninediamonds"),suit:.diamonds, value:.nine)
var NineHearts = Card(Img: UIImage.self(named:"Ninehearts"),suit:.hearts, value:.nine)
var NineSpades = Card(Img: UIImage.self(named:"Ninespades"),suit:.spades, value:.nine)
var TenClubs = Card(Img: UIImage.self(named:"Tenclubs"),suit:.clubs, value:.ten)
var TenDiamonds = Card(Img: UIImage.self(named:"Tendiamonds"),suit:.diamonds, value:.ten)
var TenHearts = Card(Img: UIImage.self(named:"Tenhearts"),suit:.hearts, value:.ten)
var TenSpades = Card(Img: UIImage.self(named:"Tenspades"),suit:.spades, value:.ten)
var JackClubs = Card(Img: UIImage.self(named:"Jackclubs"),suit:.clubs, value:.jack)
var JackDiamonds = Card(Img: UIImage.self(named:"Jackdiamonds"),suit:.diamonds, value:.jack)
var JackHearts = Card(Img: UIImage.self(named:"Jackhearts"),suit:.hearts, value:.jack)
var JackSpades = Card(Img: UIImage.self(named:"Jackspades"),suit:.spades, value:.jack)
var QueenClubs = Card(Img: UIImage.self(named:"Queenclubs"),suit:.clubs, value:.queen)
var QueenDiamonds = Card(Img: UIImage.self(named:"Queendiamonds"),suit:.diamonds, value:.queen)
var QueenHearts = Card(Img: UIImage.self(named:"Queenhearts"),suit:.hearts, value:.queen)
var QueenSpades = Card(Img: UIImage.self(named:"Queenspades"),suit:.spades, value:.queen)
var KingClubs = Card(Img: UIImage.self(named:"Kingclubs"),suit:.clubs, value:.king)
var KingDiamonds = Card(Img: UIImage.self(named:"Kingdiamonds"),suit:.diamonds, value:.king)
var KingHearts = Card(Img: UIImage.self(named:"Kinghearts"),suit:.hearts, value:.king)
var KingSpades = Card(Img: UIImage.self(named:"Kingspades"),suit:.spades, value:.king)
var AceClubs = Card(Img: UIImage.self(named:"Aceclubs"),suit:.clubs, value:.ace)
var AceDiamonds = Card(Img: UIImage.self(named:"Acediamonds"),suit:.diamonds, value:.ace)
var AceHearts = Card(Img: UIImage.self(named:"Acehearts"),suit:.hearts, value:.ace)
var AceSpades = Card(Img: UIImage.self(named:"Acespades"),suit:.spades, value:.ace)



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
