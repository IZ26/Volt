//
//  EditProfilVC.swift
//  Volt
//
//  Created by Ilan Zerdoun on 03/09/2019.
//  Copyright © 2019 Ilan Zerdoun. All rights reserved.
//

import UIKit

class EditProfilVC: UIViewController {
    
    let user = User()

    @IBOutlet weak var navigationBar: UINavigationBar!
    @IBOutlet weak var saveChange: UIBarButtonItem!
    @IBOutlet weak var cancelChange: UIBarButtonItem!
    
    @IBOutlet weak var profilImage: UIImageView!
    @IBOutlet weak var changePhoto: Button!
    @IBOutlet weak var logout: UIButton!
    
    @IBOutlet weak var formContainer: UIView!
    @IBOutlet weak var formTitle: UILabel!
    
    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var mailLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    
    @IBOutlet weak var firstNameInput: UITextField!{
        didSet{
            firstNameInput.underlined()
        }
    }
    @IBOutlet weak var lastNameInput: UITextField!{
        didSet{
            lastNameInput.underlined()
        }
    }
    @IBOutlet weak var ageInput: UITextField!{
        didSet{
            ageInput.underlined()
        }
    }
    @IBOutlet weak var mailInput: UITextField!{
        didSet{
            mailInput.underlined()
        }
    }
    @IBOutlet weak var cityInput: UITextField!{
        didSet{
            cityInput.underlined()
        }
    }
    
    @IBOutlet weak var notificationTItle: UILabel!
    @IBOutlet weak var switchTitle: UILabel!
    
    
    @IBOutlet weak var deleteAccount: UIButton!
    @IBOutlet weak var deleteAccountInfo: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        view.addGestureRecognizer(tap)
        
        firstNameInput.text = "\(user.firstName)"
        lastNameInput.text = "\(user.lastName)"
        ageInput.text = "\(user.age)"
        mailInput.text = "\(user.mail)"
        cityInput.text = "\(user.city)"
        
        setNavBar()
        setStyle()
    }
    
    @IBAction func done(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func cancel(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }

}

extension EditProfilVC{
    func setStyle(){
        profilImage.layer.cornerRadius = profilImage.bounds.height / 2
        profilImage.contentMode = .scaleAspectFill
        profilImage.image = UIImage(named: user.image)
        
        changePhoto.style = .bordered
        changePhoto.setTitle("Changer de photo de profil", for: .normal)
        changePhoto.titleLabel?.font = UIFont.smallTitle
        
        logout.setTitle("Déconnexion", for: .normal)
        logout.titleLabel?.font = UIFont.textSmall
        
        formContainer.layer.borderWidth = 0.3
        formContainer.layer.borderColor = UIColor.declineBlack.cgColor
        
        formTitle.textColor = UIColor.declineBlack
        formTitle.text = "Mes informations"
        formTitle.font = UIFont.current
        
        firstNameLabel.textColor = UIColor.declineBlack
        firstNameLabel.font = UIFont.current
        firstNameLabel.text = "Prénom"
        
        lastNameLabel.textColor = UIColor.declineBlack
        lastNameLabel.font = UIFont.current
        lastNameLabel.text = "Nom"
        
        ageLabel.textColor = UIColor.declineBlack
        ageLabel.font = UIFont.current
        ageLabel.text = "Âge"
        
        mailLabel.textColor = UIColor.declineBlack
        mailLabel.font = UIFont.current
        mailLabel.text = "Mail"
        
        cityLabel.textColor = UIColor.declineBlack
        cityLabel.font = UIFont.current
        cityLabel.text = "Ville"
        
        firstNameInput.font = UIFont.textMedium
        firstNameInput.textColor = UIColor.declineBlack
        
        lastNameInput.font = UIFont.textMedium
        lastNameInput.textColor = UIColor.declineBlack
        
        ageInput.font = UIFont.textMedium
        ageInput.textColor = UIColor.declineBlack
        
        mailInput.font = UIFont.textMedium
        mailInput.textColor = UIColor.declineBlack
        
        cityInput.font = UIFont.textMedium
        cityInput.textColor = UIColor.declineBlack
        
        notificationTItle.textColor = UIColor.declineBlack
        notificationTItle.text = "Notifications"
        notificationTItle.font = UIFont.current
        
        switchTitle.text = "Activer les notifications"
        switchTitle.textColor = UIColor.declineBlack
        switchTitle.font = UIFont.textSmall
        
        deleteAccount.setTitle("Supprimer mon compte", for: .normal)
        deleteAccount.titleLabel?.textColor = UIColor.declineRed
        deleteAccount.titleLabel?.font = UIFont.button
        
        deleteAccountInfo.text = "Toutes les informations liées a ce compte seront définitivement effacées"
        deleteAccountInfo.font = UIFont.textSmall
        deleteAccountInfo.textColor = UIColor.declineBlack
        
    }
    
    func setNavBar(){
        navigationBar.tintColor = UIColor.declineBlack
        navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.declineBlack, NSAttributedString.Key.font: UIFont.current]
        
        cancelChange.setTitleTextAttributes([ NSAttributedString.Key.font: UIFont.textSmall], for: .normal)
        
        saveChange.setTitleTextAttributes([ NSAttributedString.Key.font: UIFont.textSmall], for: .normal)
    }
}

extension UITextField{
    func underlined(){
        let border = CALayer()
        let width = CGFloat(1.0)
        border.borderColor = UIColor.declineBlackOpacity.cgColor
        border.frame = CGRect(x: 0, y: self.frame.size.height - width, width:  self.frame.size.width, height: self.frame.size.height)
        border.borderWidth = 0.2
        self.layer.addSublayer(border)
        self.layer.masksToBounds = true
    }
}
