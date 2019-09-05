//
//  InfoStepTwoVC.swift
//  Volt
//
//  Created by Ilan Zerdoun on 25/08/2019.
//  Copyright © 2019 Ilan Zerdoun. All rights reserved.
//

import UIKit

class InfoStepTwoVC: UIViewController {


    @IBOutlet weak var infoStepsTitle: UILabel!
    @IBOutlet weak var stepTwoTitle: UILabel!
    @IBOutlet weak var stepOne: UIView!
    @IBOutlet weak var stepTwo: UIView!
    @IBOutlet weak var stepThree: UIView!
    @IBOutlet weak var infoSport: TextField!
    @IBOutlet weak var infoFrequency: TextField!
    @IBOutlet weak var infoHandTitle: UILabel!
    @IBOutlet weak var rightHandButton: UIButton!
    @IBOutlet weak var rightHandTitle: UILabel!
    @IBOutlet weak var leftHandButton: UIButton!
    @IBOutlet weak var leftHandTitle: UILabel!
    @IBOutlet weak var stepThreeButton: Button!
    @IBOutlet weak var stepTwoGoHome: Button!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        view.addGestureRecognizer(tap)
        
        setStyle()
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }

}

extension InfoStepTwoVC{
    func setStyle(){
        
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = 2.5
        let attrString = NSMutableAttributedString(string: infoStepsTitle.text!)
        attrString.addAttribute(NSAttributedString.Key.paragraphStyle, value:paragraphStyle, range:NSMakeRange(0, attrString.length))
        let attributes = [
            NSAttributedString.Key.foregroundColor: UIColor.declineBlack,
            NSAttributedString.Key.font : UIFont.textSmall
        ]
        
        infoStepsTitle.text = "Compléter votre profil en 3 étapes"
        infoStepsTitle.textColor = UIColor.declineBlack
        infoStepsTitle.font = UIFont.current
        infoStepsTitle.attributedText = attrString
        infoStepsTitle.textAlignment = NSTextAlignment.center
        
        stepOne.layer.cornerRadius = 2.5
        stepTwo.layer.cornerRadius = 2.5
        stepThree.layer.cornerRadius = 2.5
        
        stepTwoTitle.text = "Vos informations personnelles"
        stepTwoTitle.textColor = UIColor.declineBlack
        stepTwoTitle.font = UIFont.textMedium
        
        infoSport.attributedPlaceholder = NSAttributedString(string: "Sport", attributes:attributes)
        infoSport.style = .bordered
        
        infoFrequency.attributedPlaceholder = NSAttributedString(string: "Fréquence", attributes:attributes)
        infoFrequency.style = .bordered
        
        infoHandTitle.text = "Votre main?"
        infoHandTitle.textColor = UIColor.declineBlack
        infoHandTitle.font = UIFont.textSmall
        
        rightHandButton.layer.cornerRadius = 7.5
        rightHandButton.layer.borderWidth = 0.5
        rightHandButton.layer.borderColor = UIColor.greenLemon.cgColor
        
        rightHandTitle.text = "Droitier"
        rightHandTitle.textColor = UIColor.declineBlack
        rightHandTitle.font = UIFont.textSmall
        
        leftHandButton.layer.cornerRadius = 7.5
        leftHandButton.layer.borderWidth = 0.5
        leftHandButton.layer.borderColor = UIColor.greenLemon.cgColor
        
        leftHandTitle.text = "Gaucher"
        leftHandTitle.textColor = UIColor.declineBlack
        leftHandTitle.font = UIFont.textSmall
        
        stepThreeButton.setTitle("CONTINUER", for: .normal)
        stepThreeButton.titleLabel?.font = UIFont.button
        stepThreeButton.style = .green
        
        stepTwoGoHome.setTitle("Compléter mon profil plus tard", for: .normal)
        stepTwoGoHome.titleLabel?.font = UIFont.current
        stepTwoGoHome.style = .bordered
    }
}
