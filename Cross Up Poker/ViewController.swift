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

    @IBOutlet weak var ImageCard16: UIImageView!
    @IBOutlet weak var ImageCard17: UIImageView!
    @IBOutlet weak var ImageCard18: UIImageView!
    @IBOutlet weak var ImageCard19: UIImageView!
    @IBOutlet weak var ImageCard110: UIImageView!
    @IBOutlet weak var ImageCard26: UIImageView!
    @IBOutlet weak var ImageCard27: UIImageView!
    @IBOutlet weak var ImageCard28: UIImageView!
    @IBOutlet weak var ImageCard29: UIImageView!
    @IBOutlet weak var ImageCard210: UIImageView!
    @IBOutlet weak var ImageCard36: UIImageView!
    @IBOutlet weak var ImageCard37: UIImageView!
    @IBOutlet weak var ImageCard38: UIImageView!
    @IBOutlet weak var ImageCard39: UIImageView!
    @IBOutlet weak var ImageCard310: UIImageView!
    @IBOutlet weak var ImageCard46: UIImageView!
    @IBOutlet weak var ImageCard47: UIImageView!
    @IBOutlet weak var ImageCard48: UIImageView!
    @IBOutlet weak var ImageCard49: UIImageView!
    @IBOutlet weak var ImageCard410: UIImageView!
    @IBOutlet weak var ImageCard56: UIImageView!
    @IBOutlet weak var ImageCard57: UIImageView!
    @IBOutlet weak var ImageCard58: UIImageView!
    @IBOutlet weak var ImageCard59: UIImageView!
    @IBOutlet weak var ImageCard510: UIImageView!
    
    @IBOutlet weak var winnerOrLoser: UILabel!
    
    @IBOutlet var currentCard: UIImageView!
    
    var cardImage: UIImage?
    
    //Placeholder values
    var card: Card = Card(Img: UIImage(), suit: .clubs, value: 0)
    var deck: Deck = Deck()
    var userHands: [[Card]] = [[Card]]()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        setupGame()
    }
    
    func setupGame()
    {
        //deck = Deck()
        for _ in 0...4
        {
            var temp: [Card] = []
            for _ in 0...4
            {
                temp.append(Card(Img: nil, suit: .clubs, value: -1))
            }
            userHands.append(temp)
        }
        
        card = deck.remove()
        print(card)
        cardImage = card.Img
    }
    
    @IBAction func placeCard(_ sender: UIButton)
    {
        var invalidMove = false
        //A ton of ifs
        
        if (sender == OneSix && userHands[0][0].value == -1)
        {
            userHands[0][0] = card
            //ImageCard16.image = cardImage
        }
        else if (sender == OneSeven && userHands[0][1].value == -1)
        {
            userHands[0][1] = card
            //ImageCard17.image = cardImage
        }
        else if (sender == OneEight && userHands[0][2].value == -1)
        {
            userHands[0][2] = card
            //ImageCard18.image = cardImage
        }
        else if (sender == OneNine && userHands[0][3].value == -1)
        {
            userHands[0][3] = card
            //ImageCard19.image = cardImage
        }
        else if (sender == OneTen && userHands[0][4].value == -1)
        {
            userHands[0][4] = card
            //ImageCard110.image = cardImage
        }
            
        else if (sender == TwoSix && userHands[1][0].value == -1)
        {
            userHands[1][0] = card
            //ImageCard26.image = cardImage
        }
        else if (sender == TwoSeven && userHands[1][1].value == -1)
        {
            userHands[1][1] = card
            //ImageCard27.image = cardImage
        }
        else if (sender == TwoEight && userHands[1][2].value == -1)
        {
            userHands[1][2] = card
            //ImageCard28.image = cardImage
        }
        else if (sender == TwoNine && userHands[1][3].value == -1)
        {
            userHands[1][3] = card
            //ImageCard29.image = cardImage
        }
        else if (sender == TwoTen && userHands[1][4].value == -1)
        {
            userHands[1][4] = card
            //ImageCard210.image = cardImage
        }
        
        else if (sender == ThreeSix && userHands[2][0].value == -1)
        {
            userHands[2][0] = card
            ImageCard36.image = cardImage
        }
        else if (sender == ThreeSeven && userHands[2][1].value == -1)
        {
            userHands[2][1] = card
            //ImageCard37.image = cardImage
        }
        else if (sender == ThreeEight && userHands[2][2].value == -1)
        {
            userHands[2][2] = card
            //ImageCard38.image = cardImage
        }
        else if (sender == ThreeNine && userHands[2][3].value == -1)
        {
            userHands[2][3] = card
            //ImageCard39.image = cardImage
        }
        else if (sender == ThreeTen && userHands[2][4].value == -1)
        {
            userHands[2][4] = card
            //ImageCard310.image = cardImage
        }
            
        else if (sender == FourSix && userHands[3][0].value == -1)
        {
            userHands[3][0] = card
            //ImageCard46.image = cardImage
        }
        else if (sender == FourSeven && userHands[3][1].value == -1)
        {
            userHands[3][1] = card
            //ImageCard47.image = cardImage
        }
        else if (sender == FourEight && userHands[3][2].value == -1)
        {
            userHands[3][2] = card
            //ImageCard48.image = cardImage
        }
        else if (sender == FourNine && userHands[3][3].value == -1)
        {
            userHands[3][3] = card
            //ImageCard49.image = cardImage
        }
        else if (sender == FourTen && userHands[3][4].value == -1)
        {
            userHands[3][4] = card
            //ImageCard410.image = cardImage
        }
            
        else if (sender == FiveSix && userHands[4][0].value == -1)
        {
            userHands[4][0] = card
            //ImageCard56.image = cardImage
        }
        else if (sender == FiveSeven && userHands[4][1].value == -1)
        {
            userHands[4][1] = card
            //ImageCard57.image = cardImage
        }
        else if (sender == FiveEight && userHands[4][2].value == -1)
        {
            userHands[4][2] = card
            //ImageCard58.image = cardImage
        }
        else if (sender == FiveNine && userHands[4][3].value == -1)
        {
            userHands[4][3] = card
            //ImageCard59.image = cardImage
        }
        else if (sender == FiveTen && userHands[4][4].value == -1)
        {
            userHands[4][4] = card
            //ImageCard510.image = cardImage
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
            winnerOrLoser.text = "Loser... You: \(playerPoints) points | CPU: \(cpuPoints) points"
        }
        else if (playerPoints >= cpuPoints)
        {
            winnerOrLoser.text = "Winner! You: \(playerPoints) points | CPU: \(cpuPoints) points"
        }
    }
}
