//
//  OverlayCard.swift
//  Volt
//
//  Created by Ilan Zerdoun on 05/09/2019.
//  Copyright © 2019 Ilan Zerdoun. All rights reserved.
//

import UIKit
import Koloda

private let overlayRightImageName = UIColor.declineGreenOpacity
private let overlayLeftImageName = UIColor.declineRedOpacity

class OverlayCard: OverlayView {

    
    @IBOutlet weak var orvelayCard: UIView!
    
    override var overlayState: SwipeResultDirection?  {
        didSet {
            switch overlayState {
            case .left? :
                orvelayCard.layer.cornerRadius = 15
                orvelayCard.backgroundColor =
                overlayLeftImageName
            case .right? :
                orvelayCard.layer.cornerRadius = 15
                orvelayCard.backgroundColor =
                overlayRightImageName
            default:
                orvelayCard.backgroundColor = UIColor(white: 1, alpha: 0)
            }
            
        }
    }
}

