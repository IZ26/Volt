//
//  CompetenceCell.swift
//  Volt
//
//  Created by Ilan Zerdoun on 12/09/2019.
//  Copyright © 2019 Ilan Zerdoun. All rights reserved.
//

import UIKit

class CompetenceCell: UICollectionViewCell {

    @IBOutlet weak var competenceContainer: CompetenceComponent!
    @IBOutlet weak var competenceTitle: UILabel!
    
    
    override func awakeFromNib() {
        competenceTitle.font = UIFont.textSmall
        competenceTitle.textColor = UIColor.declineBlack
        
        competenceContainer.style = .bordered
    }
}
