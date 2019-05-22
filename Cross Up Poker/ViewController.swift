//
//  ViewController.swift
//  Cross Up Poker
//
//  Created by Olfers, Haden W on 4/23/19.
//  Copyright © 2019 Olfers, Haden W. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var OneSix: UIButton!
    @IBOutlet weak var OneSeven: UIButton!
    @IBOutlet weak var OneEight: UIButton!
    @IBOutlet weak var OneNine: UIButton!
    @IBOutlet weak var OneTen: UIButton!
    @IBOutlet weak var TwoSix: UIButton!
    @IBOutlet weak var TwoSeven: UIButton!
    @IBOutlet weak var TwoEight: UIButton!
    @IBOutlet weak var TwoNine: UIButton!
    @IBOutlet weak var TwoTen: UIButton!
    @IBOutlet weak var ThreeSix: UIButton!
    @IBOutlet weak var ThreeSeven: UIButton!
    @IBOutlet weak var ThreeEight: UIButton!
    @IBOutlet weak var ThreeNine: UIButton!
    @IBOutlet weak var ThreeTen: UIButton!
    @IBOutlet weak var FourSix: UIButton!
    @IBOutlet weak var FourSeven: UIButton!
    @IBOutlet weak var FourEight: UIButton!
    @IBOutlet weak var FourNine: UIButton!
    @IBOutlet weak var FourTen: UIButton!
    @IBOutlet weak var FiveSix: UIButton!
    @IBOutlet weak var FiveSeven: UIButton!
    @IBOutlet weak var FiveEight: UIButton!
    @IBOutlet weak var FiveNine: UIButton!
    @IBOutlet weak var FiveTen: UIButton!

    @IBOutlet weak var currentCard: UIImageView!
    
    //Placeholder values
    var card: Card = Card(Img: UIImage(), suit: .clubs, value: 0)
    var deck: Deck = Deck()
    var cardImage: UIImage?
    var userHands: [[Card]] = []
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        setupGame()
    }
    
    func setupGame()
    {
        //deck = Deck()
        for i in 0...4
        {
            var temp: [Card] = []
            for j in 0...4
            {
                temp.append(Card(Img: nil, suit: .clubs, value: -1))
            }
            userHands.append(temp)
        }
        
        card = deck.remove()
        print(card)
        cardImage = card.Img
        //currentCard.image = cardImage!
    }
    
    @IBAction func placeCard(_ sender: UIButton)
    {
        var invalidMove = false
        //A ton of ifs
        
        if (sender == OneSix && userHands[0][0].value == -1)
        {
            userHands[0][0] = card
        }
        else if (sender == OneSeven && userHands[0][1].value == -1)
        {
            userHands[0][1] = card
        }
        else if (sender == OneEight && userHands[0][2].value == -1)
        {
            userHands[0][2] = card
        }
        else if (sender == OneNine && userHands[0][3].value == -1)
        {
            userHands[0][3] = card
        }
        else if (sender == OneTen && userHands[0][4].value == -1)
        {
            userHands[0][4] = card
        }
            
        else if (sender == TwoSix && userHands[1][0].value == -1)
        {
            userHands[1][0] = card
        }
        else if (sender == TwoSeven && userHands[1][1].value == -1)
        {
            userHands[1][1] = card
        }
        else if (sender == TwoEight && userHands[1][2].value == -1)
        {
            userHands[1][2] = card
        }
        else if (sender == TwoNine && userHands[1][3].value == -1)
        {
            userHands[1][3] = card
        }
        else if (sender == TwoTen && userHands[1][4].value == -1)
        {
            userHands[1][4] = card
        }
        
        else if (sender == ThreeSix && userHands[2][0].value == -1)
        {
            userHands[2][0] = card
        }
        else if (sender == ThreeSeven && userHands[2][1].value == -1)
        {
            userHands[2][1] = card
        }
        else if (sender == ThreeEight && userHands[2][2].value == -1)
        {
            userHands[2][2] = card
        }
        else if (sender == ThreeNine && userHands[2][3].value == -1)
        {
            userHands[2][3] = card
        }
        else if (sender == ThreeTen && userHands[2][4].value == -1)
        {
            userHands[2][4] = card
        }
            
        else if (sender == FourSix && userHands[3][0].value == -1)
        {
            userHands[3][0] = card
        }
        else if (sender == FourSeven && userHands[3][1].value == -1)
        {
            userHands[3][1] = card
        }
        else if (sender == FourEight && userHands[3][2].value == -1)
        {
            userHands[3][2] = card
        }
        else if (sender == FourNine && userHands[3][3].value == -1)
        {
            userHands[3][3] = card
        }
        else if (sender == FourTen && userHands[3][4].value == -1)
        {
            userHands[3][4] = card
        }
            
        else if (sender == FiveSix && userHands[4][0].value == -1)
        {
            userHands[4][0] = card
        }
        else if (sender == FiveSeven && userHands[4][1].value == -1)
        {
            userHands[4][1] = card
        }
        else if (sender == FiveEight && userHands[4][2].value == -1)
        {
            userHands[4][2] = card
        }
        else if (sender == FiveNine && userHands[4][3].value == -1)
        {
            userHands[4][3] = card
        }
        else if (sender == FiveTen && userHands[4][4].value == -1)
        {
            userHands[4][4] = card
        }
            
        else
        {
            invalidMove = true //User tried to overwrite a card
        }
        
        if (deck.deck.count == 27)
        {
            concludeGame()
        }
        
        else if (invalidMove == false)
        {
            card = deck.remove()
            cardImage = card.Img
            currentCard.image = cardImage!
        }
    }
    
    //When deck's card array size is 26 (25 cards have been placed), idk
    func concludeGame()
    {
        let playerPoints = getPoints(cards: userHands)
        let cpuPoints = getCpuHand(deck: deck) //error
        
        if (playerPoints < cpuPoints)
        {
            print("loser")
        }
        else if (playerPoints >= cpuPoints)
        {
            print("winner")
        }
    }
}
