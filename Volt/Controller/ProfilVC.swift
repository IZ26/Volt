//
//  ProfilVC.swift
//  Volt
//
//  Created by Ilan Zerdoun on 03/09/2019.
//  Copyright © 2019 Ilan Zerdoun. All rights reserved.
//

import UIKit

class ProfilVC: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    let user = User()

    @IBOutlet weak var profilImage: UIImageView!
    @IBOutlet weak var editProfilButton: UIButton!
    @IBOutlet weak var profilName: UILabel!
    @IBOutlet weak var profilAge: UILabel!
    @IBOutlet weak var profilLocation: UILabel!
    @IBOutlet weak var profilValue: UILabel!
    @IBOutlet weak var profilHand: UILabel!
    @IBOutlet weak var titleContainer: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    
    // Profil compétence
    @IBOutlet weak var speedContainer: CompetenceComponent!
    @IBOutlet weak var speedValue: UILabel!
    @IBOutlet weak var speedTitle: UILabel!
    @IBOutlet weak var enduranceContainer: CompetenceComponent!
    @IBOutlet weak var enduranceValue: UILabel!
    @IBOutlet weak var enduranceTitle: UILabel!
    @IBOutlet weak var serveContainer: CompetenceComponent!
    @IBOutlet weak var serveValue: UILabel!
    @IBOutlet weak var serveTitle: UILabel!
    @IBOutlet weak var forehandContainer: CompetenceComponent!
    @IBOutlet weak var forehandValue: UILabel!
    @IBOutlet weak var forehandTitle: UILabel!
    @IBOutlet weak var backhandContainer: CompetenceComponent!
    @IBOutlet weak var backhandValue: UILabel!
    @IBOutlet weak var backhandTitle: UILabel!
    @IBOutlet weak var collectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let width = (view.frame.width-20)/3
        let layout = collectionView.collectionViewLayout as! UICollectionViewFlowLayout
        layout.itemSize = CGSize(width: width, height: 130)
        
        setNavBar()
        setCompetenceContainer()
        setCompetenceValue()
        setStyle()
    }
    
    func setCompetenceValue(){
        speedValue.text = String(user.speed)
        enduranceValue.text = String(user.endurance)
        serveValue.text = String(user.serve)
        forehandValue.text = String(user.forehand)
        backhandValue.text = String(user.backhand)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 15
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "gamePlayedCell", for: indexPath ) as! CollectionCell
        
        cell.profilCellImage.image = UIImage(named: "avatar\(indexPath.row + 15)")
        cell.profilCellName.text = "\(user.firstName) \(user.lastName)"
        cell.profilCellDate.text = "le 23/01/2109"
        
        return cell
    }
    
}

extension ProfilVC{
    func setStyle(){
        profilImage.layer.cornerRadius = profilImage.bounds.height / 2
        profilImage.contentMode = .scaleAspectFill
        profilImage.image = UIImage(named: user.image)
        
        editProfilButton.layer.cornerRadius = editProfilButton.bounds.height / 2
        editProfilButton.backgroundColor = UIColor.greenLemon
        editProfilButton.layer.shadowColor = UIColor.declineBlack.cgColor
        editProfilButton.layer.shadowOffset = .zero
        editProfilButton.layer.shadowOpacity = 0.2
        editProfilButton.layer.shadowRadius = 10
        
        profilName.textColor = UIColor.declineBlack
        profilName.font = UIFont.current
        profilName.text = "\(user.firstName) \(user.lastName)"
        
        profilAge.textColor = UIColor.declineBlack
        profilAge.font = UIFont.textMedium
        profilAge.text = "\(user.age) ans"
        
        profilLocation.textColor = UIColor.declineBlack
        profilLocation.font = UIFont.textSmall
        profilLocation.text = "\(user.city)"
        
        profilValue.textColor = UIColor.declineBlack
        profilValue.font = UIFont.cardValue
        profilValue.text = "\(user.cardValue)"
        
        profilHand.textColor = UIColor.declineBlack
        profilHand.font = UIFont.textExtraSmall
        profilHand.text = user.hand.uppercased()
        
        titleContainer.layer.borderWidth = 0.3
        titleContainer.layer.borderColor = UIColor.declineBlack.cgColor
        
        titleLabel.textColor = UIColor.declineBlack
        titleLabel.font = UIFont.current
        titleLabel.text = "Historique des matches joués"
    }
    
    func setNavBar(){
        self.navigationController?.navigationBar.tintColor = UIColor.declineBlack
            self.title = user.username
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.declineBlack, NSAttributedString.Key.font: UIFont.current]
        navigationController?.navigationBar.topItem?.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: self, action: nil)
    }
    
    private func setCompetenceContainer(){
        let speed = "Vitesse"
        let endurance = "Endurance"
        let serve = "Service"
        let forehand = "Coup droit"
        let backhand = "Revers"
        
        speedContainer.style = .bordered
        speedValue.textColor = UIColor.declineBlack
        speedValue.font = UIFont.current
        speedTitle.textColor = UIColor.declineBlack
        speedTitle.text = speed.uppercased()
        speedTitle.font = UIFont.textSmall
        
        enduranceContainer.style = .bordered
        enduranceValue.textColor = UIColor.declineBlack
        enduranceValue.font = UIFont.current
        enduranceTitle.textColor = UIColor.declineBlack
        enduranceTitle.text = endurance.uppercased()
        enduranceTitle.font = UIFont.textSmall
        
        serveContainer.style = .bordered
        serveValue.textColor = UIColor.declineBlack
        serveValue.font = UIFont.current
        serveTitle.textColor = UIColor.declineBlack
        serveTitle.text = serve.uppercased()
        serveTitle.font = UIFont.textSmall
        
        forehandContainer.style = .bordered
        forehandValue.textColor = UIColor.declineBlack
        forehandValue.font = UIFont.current
        forehandTitle.textColor = UIColor.declineBlack
        forehandTitle.text = forehand.uppercased()
        forehandTitle.font = UIFont.textSmall
        
        backhandContainer.style = .bordered
        backhandValue.textColor = UIColor.declineBlack
        backhandValue.font = UIFont.current
        backhandTitle.textColor = UIColor.declineBlack
        backhandTitle.text = backhand.uppercased()
        backhandTitle.font = UIFont.textSmall
    }
    
}
