//
//  CollectionCell.swift
//  Volt
//
//  Created by Ilan Zerdoun on 06/09/2019.
//  Copyright © 2019 Ilan Zerdoun. All rights reserved.
//

import UIKit

class CollectionCell: UICollectionViewCell {
    
    @IBOutlet weak var profilCellImage: UIImageView!
    @IBOutlet weak var profilCellName: UILabel!
    @IBOutlet weak var profilCellDate: UILabel!
    
    override func awakeFromNib() {
        profilCellImage.layer.cornerRadius = profilCellImage.bounds.height / 2
        profilCellImage.contentMode = .scaleAspectFill
        
        profilCellName.textColor = UIColor.declineBlack
        profilCellName.font = UIFont.proxima10
        
        profilCellDate.textColor = UIColor.declineBlack
        profilCellDate.font = UIFont.textExtraSmall
    }
}
