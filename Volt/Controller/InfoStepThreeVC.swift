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
    
    // Speed slider
    @IBOutlet weak var speedTitle: UILabel!
    @IBOutlet weak var speedValue: UILabel!
    @IBAction func speedSlider(_ sender: UISlider) {
        getSliderValue(label: speedValue, slider: sender)
    }
    
    // Endurance slider
    @IBOutlet weak var enduranceTitle: UILabel!
    @IBOutlet weak var enduranceValue: UILabel!
    @IBAction func enduranceSlider(_ sender: UISlider) {
        getSliderValue(label: enduranceValue, slider: sender)
    }
    
    // Serve slider
    @IBOutlet weak var serveTitle: UILabel!
    @IBOutlet weak var serveValue: UILabel!
    @IBAction func serveSlider(_ sender: UISlider) {
        getSliderValue(label: serveValue, slider: sender)
    }
    
    // Forehand slider
    @IBOutlet weak var forehandTitle: UILabel!
    @IBOutlet weak var forehandValue: UILabel!
    @IBAction func forehandSlider(_ sender: UISlider) {
       getSliderValue(label: forehandValue, slider: sender)
    }
    
    // Backhand slider
    @IBOutlet weak var backhandTitle: UILabel!
    @IBOutlet weak var backhandValue: UILabel!
    @IBAction func backhandSlider(_ sender: UISlider) {
        getSliderValue(label: backhandValue, slider: sender)
    }
    
    @IBOutlet weak var validateAllInfo: Button!
    @IBOutlet weak var stepThreeGoHome: Button!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        view.addGestureRecognizer(tap)
        
        setStyle()
    }
    
    // Get slider value and change label style
    func getSliderValue(label: UILabel, slider: UISlider){
        let valueSlider = Int(slider.value)
        let sliderText = String(Int(slider.value))
        
        if valueSlider <= 25{
            label.text = "\(sliderText) Débutant"
            label.textColor = UIColor.declineRed
        }
        else if valueSlider <= 50 {
            label.text = "\(sliderText) Moyen"
            label.textColor = UIColor.gold
        }
        else if valueSlider <= 75 {
            label.text = "\(sliderText) Intermédiaire"
            label.textColor = UIColor.declinePurple
        }
        else{
            label.text = "\(sliderText) Expert"
            label.textColor = UIColor.declineGreen
        }
        
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
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
        warningInfoText.font = UIFont.textExtraSmall
        
        speedTitle.text = "Vitesse"
        speedTitle.font = UIFont.smallTitle
        speedTitle.textColor = UIColor.declineBlack
        speedValue.text = "50 Moyen"
        speedValue.font = UIFont.textExtraSmall
        speedValue.textColor = UIColor.gold
        
        enduranceTitle.text = "Endurance"
        enduranceTitle.font = UIFont.smallTitle
        enduranceTitle.textColor = UIColor.declineBlack
        enduranceValue.text = "50 Moyen"
        enduranceValue.font = UIFont.textExtraSmall
        enduranceValue.textColor = UIColor.gold
        
        serveTitle.text = "Service"
        serveTitle.font = UIFont.smallTitle
        serveTitle.textColor = UIColor.declineBlack
        serveValue.text = "50 Moyen"
        serveValue.font = UIFont.textExtraSmall
        serveValue.textColor = UIColor.gold
        
        forehandTitle.text = "Coup droit"
        forehandTitle.font = UIFont.smallTitle
        forehandTitle.textColor = UIColor.declineBlack
        forehandValue.text = "50 Moyen"
        forehandValue.font = UIFont.textExtraSmall
        forehandValue.textColor = UIColor.gold
        
        backhandTitle.text = "Revers"
        backhandTitle.font = UIFont.smallTitle
        backhandTitle.textColor = UIColor.declineBlack
        backhandValue.text = "50 Moyen"
        backhandValue.font = UIFont.textExtraSmall
        backhandValue.textColor = UIColor.gold
        
        validateAllInfo.style = .green
        validateAllInfo.setTitle("CONTINUER", for: .normal)
        validateAllInfo.titleLabel?.font = UIFont.button
        
        stepThreeGoHome.style = .bordered
        stepThreeGoHome.setTitle("Compléter mon profil plus tard", for: .normal)
        stepThreeGoHome.titleLabel?.font = UIFont.smallTitle
    }

}
