//
//  CollectionViewCell.swift
//  Cross Up Poker
//
//  Created by Olfers, Haden W on 4/25/19.
//  Copyright © 2019 Olfers, Haden W. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    let CardImage: UIImageView
    
    convenience init(CardImage: cardsImages) {
        self.init(CardImage: <#T##CollectionViewCell.cardsImages#>)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    enum cardsImages {
        
        
        case twospades,
        
        twoclubs,
        
        twodiamonds,
        
        twohearts,
        
        threespades,
        
        threeclubs,
        
        threediamonds,
        
        threehearts,
        
        fourspades,
        
        fourclubs,
        
        fourdiamonds,
        
        fourhearts,
        
        fivespades,
        
        fiveclubs,
        
        fivediamonds,
        
        fivehearts,
        
        sixspades,
        
        sixclubs,
        
        sixdiamonds,
        
        sixhearts,
        
        sevenclubs,
        
        sevendiamonds,
        
        sevenhearts,
        
        sevenspades,
        
        eightspades,
        
        eightclubs,
        
        eightdiamonds,
        
        eighthearts,
        
        ninespades,
        
        nineclubs,
        
        ninediamonds,
        
        ninehearts,
        
        tenspades,
        
        tenclubs,
        
        tendiamonds,
        
        tenhearts,
        
        jackspades,
        
        jackclubs,
        
        jackdiamonds,
        
        jackhearts,
        
        queenspades,
        
        queenclubs,
        
        queendiamonds,
        
        queenhearts,
        
        kingspades,
        
        kingclubs,
        
        kingdiamonds,
        
        kinghearts,
        
        acespades,
        
        aceclubs,
        
        acediamonds,
        
        acehearts
    }
    
}
