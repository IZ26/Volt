//
//  InfoStepThreeVC.swift
//  Volt
//
//  Created by Ilan Zerdoun on 25/08/2019.
//  Copyright © 2019 Ilan Zerdoun. All rights reserved.
//

import UIKit

class InfoStepThreeVC: UIViewController {
    
    @IBOutlet weak var infoStepsTitle: UILabel!
    @IBOutlet weak var stepOne: UIView!
    @IBOutlet weak var stepTwo: UIView!
    @IBOutlet weak var stepThree: UIView!
    @IBOutlet weak var stepThreeTitle: UILabel!
    @IBOutlet weak var warningInfo: UIView!
    @IBOutlet weak var warningInfoText: UILabel!
    @IBOutlet weak var speedTitle: UILabel!
    @IBAction func speedSlider(_ sender: UISlider) {
        getSliderValue(label: speedTitle, slider: sender)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setStyle()
        // Do any additional setup after loading the view.
    }
    
    func getSliderValue(label: UILabel, slider: UISlider){
        var value = 0
        let sliderValue = Int(slider.value)
        
        value = sliderValue
        
        if value < 50 {
            label.textColor = UIColor.greenLemon
        }else{
            label.textColor = UIColor.declineBlack
        }
        
    }

}

extension InfoStepThreeVC{
    func setStyle(){
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = 2.5
        let attrString = NSMutableAttributedString(string: infoStepsTitle.text!)
        attrString.addAttribute(NSAttributedString.Key.paragraphStyle, value:paragraphStyle, range:NSMakeRange(0, attrString.length))
        infoStepsTitle.text = "Compléter votre profil en 3 étapes"
        infoStepsTitle.textColor = UIColor.declineBlack
        infoStepsTitle.font = UIFont.current
        infoStepsTitle.attributedText = attrString
        infoStepsTitle.textAlignment = NSTextAlignment.center
        
        
        stepOne.layer.cornerRadius = 2.5
        stepTwo.layer.cornerRadius = 2.5
        stepThree.layer.cornerRadius = 2.5
        
        stepThreeTitle.text = "Evaluez vos compétences sur 100"
        stepThreeTitle.textColor = UIColor.declineBlack
        stepThreeTitle.font = UIFont.textMedium
        
        warningInfo.layer.borderWidth = 0.5
        warningInfo.layer.borderColor = UIColor.greenLemon.cgColor
        warningInfo.layer.cornerRadius = 10
        
        warningInfoText.text = "Important ! Une fois votre évaluation terminée, il ne sera plus possible de la modifier. Celles-ci seront ajustée par vos adversaires"
        warningInfoText.textColor = UIColor.declineBlack
        warningInfoText.font = UIFont.textSmall
        
        speedTitle.text = "Vitesse"
        speedTitle.font = UIFont.textMedium
        speedTitle.textColor = UIColor.declineBlack
    }

}
