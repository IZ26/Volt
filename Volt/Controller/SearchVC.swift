//
//  SearchVC.swift
//  Volt
//
//  Created by Ilan Zerdoun on 03/09/2019.
//  Copyright © 2019 Ilan Zerdoun. All rights reserved.
//

import UIKit

class SearchVC: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate  {
    
    var competence = ["Vitesse", "Endurance" , "Service" , "Coup droit", "Revers"]
    
    
    @IBOutlet weak var valueTitle: UILabel!
    @IBOutlet weak var minValueTitle: UILabel!
    @IBOutlet weak var maxValueTitle: UILabel!
    @IBOutlet weak var minValueInput: TextField!
    @IBOutlet weak var maxValueInput: TextField!
    @IBOutlet weak var competenceTitle: UILabel!
    @IBOutlet weak var sportTitle: UILabel!
    @IBOutlet weak var sportInput: TextField!
    @IBOutlet weak var locationTitle: UILabel!
    @IBOutlet weak var locationInput: TextField!
    @IBOutlet weak var competenceContainer: UIView!
    @IBOutlet weak var applyFilter: Button!
    @IBOutlet weak var locationContainer: UIView!
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setStyle()
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        view.addGestureRecognizer(tap)

    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return competence.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "competenceCell", for: indexPath ) as! CompetenceCell
        
        let competenceTitle = competence[indexPath.row]
        
        cell.competenceTitle.text = "\(competenceTitle.uppercased())"
        
        return cell
    }
    
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }

}

extension SearchVC{
    func setStyle(){
        valueTitle.textColor = UIColor.declineBlack
        valueTitle.font = UIFont.current
        valueTitle.text = "Valeur de la carte"
        
        minValueTitle.textColor = UIColor.declineBlack
        minValueTitle.font = UIFont.textSmall
        minValueTitle.text = "Min"
        
        minValueInput.style = .bordered
        
        maxValueTitle.textColor = UIColor.declineBlack
        maxValueTitle.font = UIFont.textSmall
        maxValueTitle.text = "Max"
        
        maxValueInput.style = .bordered
        
        competenceContainer.layer.borderWidth = 0.2
        competenceContainer.layer.borderColor = UIColor.declineBlack.cgColor
        
        competenceTitle.textColor = UIColor.declineBlack
        competenceTitle.font = UIFont.current
        competenceTitle.text = "Compétences"
        
        applyFilter.style = .green
        applyFilter.setTitle("APPLIQUER", for: .normal)
        applyFilter.titleLabel?.font = UIFont.button
        
        sportTitle.textColor = UIColor.declineBlack
        sportTitle.font = UIFont.current
        sportTitle.text = "Sport"
        sportInput.style = .bordered
        
        locationContainer.layer.borderWidth = 0.2
        locationContainer.layer.borderColor = UIColor.declineBlack.cgColor
        
        locationTitle.textColor = UIColor.declineBlack
        locationTitle.font = UIFont.current
        locationTitle.text = "Localisation"
        locationInput.style = .bordered
        
        collectionView!.contentInset = UIEdgeInsets(top: 10, left: 20, bottom: 10, right: 20)
    }
}
