//
//  InfoStepOneVC.swift
//  Volt
//
//  Created by Ilan Zerdoun on 25/08/2019.
//  Copyright © 2019 Ilan Zerdoun. All rights reserved.
//

import UIKit

class InfoStepOneVC: UIViewController {

    @IBOutlet weak var stepOne: UIView!
    @IBOutlet weak var stepTwo: UIView!
    @IBOutlet weak var stepThree: UIView!
    @IBOutlet weak var infoStepsTitle: UILabel!
    @IBOutlet weak var stepOneTitle: UILabel!
    @IBOutlet weak var infoFirstName: TextField!
    @IBOutlet weak var infoLastName: TextField!
    @IBOutlet weak var infoAge: TextField!
    @IBOutlet weak var infoCity: TextField!
    @IBOutlet weak var stepTwoButton: Button!
    @IBOutlet weak var stepOneGoHome: Button!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setStyle()

        // Do any additional setup after loading the view.
    }

}

extension InfoStepOneVC {
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
        
        stepOneTitle.text = "Vos informations personnelles"
        stepOneTitle.textColor = UIColor.declineBlack
        stepOneTitle.font = UIFont.textMedium
        
        infoFirstName.attributedPlaceholder = NSAttributedString(string: "Prénom", attributes:attributes)
        infoFirstName.style = .bordered
        
        infoLastName.attributedPlaceholder = NSAttributedString(string: "Nom", attributes:attributes)
        infoLastName.style = .bordered
        
        infoAge.attributedPlaceholder = NSAttributedString(string: "Âge", attributes:attributes)
        infoAge.style = .bordered
        
        infoCity.attributedPlaceholder = NSAttributedString(string: "Ville", attributes:attributes)
        infoCity.style = .bordered
        
        stepTwoButton.setTitle("CONTINUER", for: .normal)
        stepTwoButton.titleLabel?.font = UIFont.button
        stepTwoButton.style = .green
        
        stepOneGoHome.setTitle("Compléter mon profil plus tard", for: .normal)
        stepOneGoHome.titleLabel?.font = UIFont.current
        stepOneGoHome.style = .bordered
    }
}
