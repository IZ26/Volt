//
//  RegisterVC.swift
//  Volt
//
//  Created by Ilan Zerdoun on 25/08/2019.
//  Copyright © 2019 Ilan Zerdoun. All rights reserved.
//

import UIKit
import FirebaseAuth

class RegisterVC: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var registerTitle: UILabel!
    @IBOutlet weak var registerUsername: TextField!
    @IBOutlet weak var registerMail: TextField!
    @IBOutlet weak var registerPassword: TextField!
    @IBOutlet weak var registerConfirmPassword:
    TextField!
    
    @IBOutlet weak var registerCGUButton: UIButton!
    @IBOutlet weak var registerCGU: UILabel!
    
    @IBOutlet weak var registerButton: Button!
    @IBOutlet weak var registerFacebookConnect: Button!
    
    @IBOutlet weak var registerLoginText: UILabel!
    @IBOutlet weak var registerLoginButton: UIButton!
    @IBAction func registerLoginButtonAction(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        view.addGestureRecognizer(tap)
        
        self.registerUsername.delegate = self
        self.registerPassword.delegate = self
        self.registerMail.delegate = self
        self.registerConfirmPassword.delegate = self

        setStyle()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

    @IBAction func createUser(_ sender: Any) {
        Auth.auth().createUser(withEmail: registerMail.text!, password: registerPassword.text!) { authResult, error in
            if(error != nil) {
                let alert = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: UIAlertController.Style.alert)
                alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
                self.present(alert, animated: true, completion: nil)
            }
            else {
                let secondVC = self.storyboard?.instantiateViewController(withIdentifier: "infoStepOne") as! InfoStepOneVC
                self.present(secondVC, animated:true, completion:nil)
            }
        }
    }
    
    internal func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true;
    }
    
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }

}

extension RegisterVC{
    func setStyle(){
        
        let attributes = [
            NSAttributedString.Key.foregroundColor: UIColor.declineBlackOpacity,
            NSAttributedString.Key.font : UIFont.textSmall
        ]
        
        registerTitle.textColor = UIColor.white
        registerTitle.font = UIFont.title
        registerTitle.text = "Inscription"
        
        registerUsername.attributedPlaceholder = NSAttributedString(string: "Username", attributes:attributes)
        registerUsername.style = .standard
        
        registerMail.attributedPlaceholder = NSAttributedString(string: "Email", attributes:attributes)
        registerMail.style = .standard
        
        registerPassword.attributedPlaceholder = NSAttributedString(string: "Mot de passe", attributes:attributes)
        registerPassword.style = .standard
        
        registerConfirmPassword.attributedPlaceholder = NSAttributedString(string: "Confirmer le mot de passe", attributes:attributes)
        registerConfirmPassword.style = .standard
        
        registerCGUButton.layer.cornerRadius = 7.5
        
        registerCGU.textColor = UIColor.white
        registerCGU.font = UIFont.textSmall
        registerCGU.text = "Accepter les conditions générales d'utilisations"
        
        
       registerButton.style = .green
    
        registerButton.setTitle("S'INSCRIRE", for: .normal)
        registerButton.titleLabel?.font = UIFont.button
        
        registerFacebookConnect.style = .backgroundNone
        registerFacebookConnect.setTitle("Continuer avec Facebook", for: .normal)
        registerFacebookConnect.titleLabel?.font = UIFont.button
        
        registerLoginText.text = "Vous avez d'éjà un compte?"
        registerLoginText.textColor = UIColor.white
        registerLoginText.font = UIFont.current
        
        registerLoginButton.setTitle("Se connecter", for: .normal)
        registerLoginButton.titleLabel?.font = UIFont.current
        registerLoginButton.titleLabel?.tintColor = UIColor.greenLemon
    }

}
