//
//  RegisterVC.swift
//  Volt
//
//  Created by Ilan Zerdoun on 25/08/2019.
//  Copyright © 2019 Ilan Zerdoun. All rights reserved.
//

import UIKit

class RegisterVC: UIViewController {

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

        setStyle()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension RegisterVC{
    func setStyle(){
        registerTitle.textColor = UIColor.white
        registerTitle.font = UIFont.title
        registerTitle.text = "Inscription"
        
        registerUsername.placeholder = "Username"
        registerUsername.style = .standard
        
        registerMail.placeholder = "Email"
        registerMail.style = .standard
        
        registerPassword.placeholder = "Mot de passe"
        registerPassword.style = .standard
        
        registerConfirmPassword.placeholder = "Confirmer le mot de passe"
        registerConfirmPassword.style = .standard
        
        registerCGUButton.layer.cornerRadius = 7.5
        
        registerCGU.textColor = UIColor.white
        registerCGU.font = UIFont.currentText
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
