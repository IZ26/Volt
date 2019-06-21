//
//  ViewController.swift
//  Volt
//
//  Created by Ilan Zerdoun on 20/06/2019.
//  Copyright © 2019 Ilan Zerdoun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleSignIn: UILabel!
    @IBOutlet weak var userNameTextField: TextField!
    @IBOutlet weak var passwordTextField: TextField!
    @IBOutlet weak var signInUIButton: Button!
    @IBOutlet weak var facebookUIButton: Button!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setStyle()
    }

    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    func getAllFont(){
        for family: String in UIFont.familyNames
        {
            print(family)
            for names: String in UIFont.fontNames(forFamilyName: family)
            {
                print("== \(names)")
            }
        }
    }

}

// MARK -> Set Style
extension ViewController{
    func setStyle(){
        
        // Title style
        titleSignIn.textColor = UIColor.white
        titleSignIn.font      = UIFont.titleFont
        titleSignIn.text      = "Connexion"
        
        // Button style
        signInUIButton.style = .green
        signInUIButton.setTitle("CONNEXION", for: .normal)
        signInUIButton.titleLabel?.font = UIFont.buttonFont
        
        facebookUIButton.style = .backgroundNone
        facebookUIButton.setTitle("Continuer avec facebook", for: .normal)
        facebookUIButton.titleLabel?.font = UIFont.buttonFont
        
        
        // InputStyle
        userNameTextField.style = .standard
        userNameTextField.placeholder = "Username"
        
        passwordTextField.style = .standard
        passwordTextField.placeholder = "Mot de passe"
    }
}

