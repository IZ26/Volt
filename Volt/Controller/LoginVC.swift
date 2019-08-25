//
//  LoginVC.swift
//  Volt
//
//  Created by Ilan Zerdoun on 25/08/2019.
//  Copyright © 2019 Ilan Zerdoun. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {
    
    @IBOutlet weak var loginTitle: UILabel!
    @IBOutlet weak var loginUsername: TextField!
    @IBOutlet weak var loginPassword: TextField!
    @IBOutlet weak var loginButton: Button!
    @IBOutlet weak var loginFacebookConnect: Button!
    @IBOutlet weak var loginRegisterText: UILabel!
    @IBOutlet weak var loginRegisterButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setStyle()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    
    
//    func getAllFont(){
//        for family: String in UIFont.familyNames
//        {
//            print(family)
//            for names: String in UIFont.fontNames(forFamilyName: family)
//            {
//                print("== \(names)")
//            }
//        }
//    }

}

extension LoginVC{
    func setStyle(){
        
        let attributes = [
            NSAttributedString.Key.foregroundColor: UIColor.declineBlack,
            NSAttributedString.Key.font : UIFont.textSmall
        ]
        
        loginTitle.textColor = UIColor.white
        loginTitle.font = UIFont.title
        loginTitle.text = "Connexion"
        
        loginUsername.attributedPlaceholder = NSAttributedString(string: "Username", attributes:attributes)
        loginUsername.style = .standard
        
        loginPassword.attributedPlaceholder = NSAttributedString(string: "Mot de passe", attributes:attributes)
        loginPassword.style = .standard
        
        loginButton.style = .green
        loginButton.setTitle("CONNEXION", for: .normal)
        loginButton.titleLabel?.font = UIFont.button
        
        loginFacebookConnect.style = .backgroundNone
        loginFacebookConnect.setTitle("Continuer avec Facebook", for: .normal)
        loginFacebookConnect.titleLabel?.font = UIFont.button
        
        loginRegisterButton.setTitle("S'inscrire", for: .normal)
        loginRegisterButton.titleLabel?.font = UIFont.current
        loginRegisterButton.titleLabel?.tintColor = UIColor.greenLemon
        
        loginRegisterText.text = "Vous n'avez pas de compte?"
        loginRegisterText.textColor = UIColor.white
        loginRegisterText.font = UIFont.current
        
    }
}
