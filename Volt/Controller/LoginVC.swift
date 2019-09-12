//
//  LoginVC.swift
//  Volt
//
//  Created by Ilan Zerdoun on 25/08/2019.
//  Copyright © 2019 Ilan Zerdoun. All rights reserved.
//

import UIKit
import FirebaseAuth

class LoginVC: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var loginTitle: UILabel!
    @IBOutlet weak var loginUsername: TextField!
    @IBOutlet weak var loginPassword: TextField!
    @IBOutlet weak var loginButton: Button!
    @IBOutlet weak var loginFacebookConnect: Button!
    @IBOutlet weak var loginRegisterText: UILabel!
    @IBOutlet weak var loginRegisterButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        view.addGestureRecognizer(tap)

        setStyle()
        
        self.loginUsername.delegate = self
        self.loginPassword.delegate = self
    }
    
    internal func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true;
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    @IBAction func signIn(_ sender: Any) {
        Auth.auth().signIn(withEmail: loginUsername.text!, password: loginPassword.text!) { [weak self] user, error in
            
            if(error != nil) {
                let alert = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: UIAlertController.Style.alert)
                alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
                self!.present(alert, animated: true, completion: nil)
            }
            else {
                let secondVC = self!.storyboard?.instantiateViewController(withIdentifier: "infoStepOne") as! InfoStepOneVC
                self!.present(secondVC, animated:true, completion:nil)
            }
        }
    }
    
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    
}

extension LoginVC{
    func setStyle(){
        
        let attributes = [
            NSAttributedString.Key.foregroundColor: UIColor.declineBlackOpacity,
            NSAttributedString.Key.font : UIFont.textSmall
        ]
        
        loginTitle.textColor = UIColor.white
        loginTitle.font = UIFont.title
        loginTitle.text = "Connexion"
        
        loginUsername.attributedPlaceholder = NSAttributedString(string: "Mail", attributes:attributes)
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
