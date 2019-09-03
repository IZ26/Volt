//
//  HomeVC.swift
//  Volt
//
//  Created by Ilan Zerdoun on 03/09/2019.
//  Copyright © 2019 Ilan Zerdoun. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {
    
    @IBOutlet weak var cardProfil: UIView!
    @IBOutlet weak var blurredEffect: UIVisualEffectView!
    @IBOutlet weak var profilImage: UIImageView!
    @IBOutlet weak var profilName: UILabel!
    @IBOutlet weak var profilAge: UILabel!
    @IBOutlet weak var profilLocation: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setStyle()
        setCardInfo()
    }
    
    func setCardInfo(){
        let lastName = "Delcourt"
        let firstName = "Angelique"
        let age = "26"
        let location = "6"
        
        profilName.text = "\(firstName) \(lastName)"
        profilAge.text = "\(age) ans"
        profilLocation.text = "\(location) km de chez vous"
    }
}

extension HomeVC{
    func setStyle(){
        cardProfil.layer.cornerRadius = 15
        cardProfil.backgroundColor = UIColor(patternImage: UIImage(named: "femme")!)
        
        blurredEffect.layer.cornerRadius = 15
        blurredEffect.clipsToBounds = true
        
        profilImage.image = UIImage(named: "femme")
        profilImage.contentMode = .scaleAspectFill
        profilImage.layer.cornerRadius = profilImage.bounds.height / 2
        
        profilName.textColor = UIColor.white
        profilName.font = UIFont.current
        
        profilAge.textColor = UIColor.white
        profilAge.font = UIFont.textSmall
        
        profilLocation.textColor = UIColor.white
        profilLocation.font = UIFont.textSmall
    }
}
