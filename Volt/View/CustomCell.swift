//
//  CustomCell.swift
//  Volt
//
//  Created by Ilan Zerdoun on 05/09/2019.
//  Copyright © 2019 Ilan Zerdoun. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {
    
    
    @IBOutlet weak var profilImage: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var hour: UILabel!
    @IBOutlet weak var lastMessage: UILabel!
    @IBOutlet weak var notificationContainer: UIView!
    @IBOutlet weak var notificationText: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        profilImage.layer.cornerRadius = profilImage.bounds.height / 2
        notificationContainer.backgroundColor = UIColor.greenLemon
        notificationContainer.layer.cornerRadius = notificationContainer.bounds.height / 2
        
        notificationText.textColor = UIColor.declineBlack
        notificationText.font = UIFont.sf7
        
        name.textColor = UIColor.declineBlack
        name.font = UIFont.current
        
        lastMessage.textColor = UIColor.declineBlackOpacity
        lastMessage.font = UIFont.textSmall
        
        hour.textColor = UIColor.declineBlack
        hour.font = UIFont.textExtraSmall
        hour.text = "11:47 AM"
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
