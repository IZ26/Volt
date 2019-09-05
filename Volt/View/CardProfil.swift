//
//  CardProfil.swift
//  Volt
//
//  Created by Ilan Zerdoun on 04/09/2019.
//  Copyright © 2019 Ilan Zerdoun. All rights reserved.
//

import UIKit

class CardProfil: UIView {
    
    var cardImage = ""
    var cardHand = ""
    var cardValue = 0
    var cardFirstName = ""
    var cardLastName = ""
    var cardSpeed = 0
    var cardServe = 0
    var cardEndurance = 0
    var cardForhand = 0
    var cardBackhand = 0
    
    
    @IBOutlet var cardProfil: UIView!
    @IBOutlet weak var blurredEffect: UIVisualEffectView!
    @IBOutlet weak var profilImage: UIImageView!
    @IBOutlet weak var profilCompetenceBg: UIView!
    @IBOutlet weak var profilValue: UILabel!
    @IBOutlet weak var profilHand: UILabel!

    // Card competence
    
    
    override init (frame: CGRect)
    {
        super.init(frame: frame)
        commonInit()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    private func setCardComponent(){
        cardImage = "avatar"
        cardValue = 96
        cardHand = "Droitier"
        
        cardProfil.backgroundColor = UIColor(patternImage: UIImage(named:  cardImage)!)
        cardProfil.frame = self.bounds
        cardProfil.layer.cornerRadius = 15
        cardProfil.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        profilValue.text = String(cardValue)
        profilValue.font = UIFont.cardValue
        profilValue.textColor = UIColor.white

        profilHand.text = cardHand.uppercased()
        profilHand.font = UIFont.textExtraSmall
        profilHand.textColor = UIColor.white
        
        blurredEffect.layer.cornerRadius = 15
        blurredEffect.clipsToBounds = true
        
        profilImage.image = UIImage(named: cardImage)
        profilImage.contentMode = .scaleAspectFill
        profilImage.layer.masksToBounds = false
        profilImage.layer.cornerRadius = profilImage.frame.height/2
        profilImage.clipsToBounds = true

        profilCompetenceBg.backgroundColor = UIColor.declineBlack
    }
    
    private func commonInit(){
    Bundle.main.loadNibNamed("CardProfil", owner: self, options: nil)
        addSubview(cardProfil)
        
        setCardComponent()
    }

}
