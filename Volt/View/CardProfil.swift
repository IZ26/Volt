//
//  CardProfil.swift
//  Volt
//
//  Created by Ilan Zerdoun on 04/09/2019.
//  Copyright © 2019 Ilan Zerdoun. All rights reserved.
//

import UIKit

class CardProfil: UIView {
    
    
    @IBOutlet var cardProfil: UIView!
    @IBOutlet weak var blurredEffect: UIVisualEffectView!
    @IBOutlet weak var profilImage: UIImageView!
    @IBOutlet weak var profilCompetenceBg: UIView!
    @IBOutlet weak var profilValue: UILabel!
    @IBOutlet weak var profilHand: UILabel!
    
    @IBOutlet weak var profilName: UILabel!
    @IBOutlet weak var profilAge: UILabel!
    @IBOutlet weak var profilLocation: UILabel!
    
    
    
    @IBOutlet weak var profilSport: UILabel!
    @IBOutlet weak var profilGamePlayed: UILabel!
    

    // Card competence
    @IBOutlet weak var speedContainer: CompetenceComponent!
    @IBOutlet weak var speedValue: UILabel!
    @IBOutlet weak var speedTitle: UILabel!
    
    @IBOutlet weak var enduranceContainer: CompetenceComponent!
    @IBOutlet weak var enduranceValue: UILabel!
    @IBOutlet weak var enduranceTitle: UILabel!
    
    @IBOutlet weak var serveContainer: CompetenceComponent!
    @IBOutlet weak var serveValue: UILabel!
    @IBOutlet weak var serveTitle: UILabel!
    
    @IBOutlet weak var forehandContainer: CompetenceComponent!
    @IBOutlet weak var forehandValue: UILabel!
    @IBOutlet weak var forehandTitle: UILabel!
    
    @IBOutlet weak var backhandContainer: CompetenceComponent!
    @IBOutlet weak var backhandValue: UILabel!
    @IBOutlet weak var backhandTitle: UILabel!
    
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
        cardProfil.backgroundColor = UIColor(patternImage: UIImage(named: "avatar")!)
        cardProfil.frame = self.bounds
        cardProfil.layer.cornerRadius = 15
        cardProfil.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        profilName.textColor = UIColor.white
        profilName.font = UIFont.largeTitle
        
        profilAge.font = UIFont.textLarge
        profilAge.textColor = UIColor.white
        
        profilLocation.textColor = UIColor.white
        profilLocation.font = UIFont.textSmall
        
        profilValue.font = UIFont.cardValue
        profilValue.textColor = UIColor.white

        profilHand.font = UIFont.textExtraSmall
        profilHand.textColor = UIColor.white
        
        blurredEffect.layer.cornerRadius = 15
        blurredEffect.clipsToBounds = true
        
        profilImage.image = UIImage(named: "avatar")
        profilImage.contentMode = .scaleAspectFill
        profilImage.layer.masksToBounds = false
        profilImage.layer.cornerRadius = profilImage.frame.height/2
        profilImage.clipsToBounds = true
        
        profilCompetenceBg.backgroundColor = UIColor.declineBlack
    
        profilSport.textColor = UIColor.white
        profilSport.font = UIFont.textMedium
        
        profilGamePlayed.textColor = UIColor(white: 1, alpha: 0.5)
        profilGamePlayed.font = UIFont.textSmall
    }
    
    private func setCompetenceContainer(){
        let speed = "Vitesse"
        let endurance = "Endurance"
        let serve = "Service"
        let forehand = "Coup droit"
        let backhand = "Revers"
        
        speedContainer.style = .bordered
        speedValue.textColor = UIColor.white
        speedValue.font = UIFont.current
        speedTitle.textColor = UIColor.white
        speedTitle.text = speed.uppercased()
        speedTitle.font = UIFont.textSmall
        
        enduranceContainer.style = .bordered
        enduranceValue.textColor = UIColor.white
        enduranceValue.font = UIFont.current
        enduranceTitle.textColor = UIColor.white
        enduranceTitle.text = endurance.uppercased()
        enduranceTitle.font = UIFont.textSmall
        
        serveContainer.style = .bordered
        serveValue.textColor = UIColor.white
        serveValue.font = UIFont.current
        serveTitle.textColor = UIColor.white
        serveTitle.text = serve.uppercased()
        serveTitle.font = UIFont.textSmall
        
        forehandContainer.style = .bordered
        forehandValue.textColor = UIColor.white
        forehandValue.font = UIFont.current
        forehandTitle.textColor = UIColor.white
        forehandTitle.text = forehand.uppercased()
        forehandTitle.font = UIFont.textSmall
        
        backhandContainer.style = .bordered
        backhandValue.textColor = UIColor.white
        backhandValue.font = UIFont.current
        backhandTitle.textColor = UIColor.white
        backhandTitle.text = backhand.uppercased()
        backhandTitle.font = UIFont.textSmall
    }
    
    private func commonInit(){
    Bundle.main.loadNibNamed("CardProfil", owner: self, options: nil)
        addSubview(cardProfil)
        
        setCompetenceContainer()
        setCardComponent()
    }

}
