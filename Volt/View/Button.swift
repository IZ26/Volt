//
//  Button.swift
//  Volt
//
//  Created by Ilan Zerdoun on 21/06/2019.
//  Copyright © 2019 Ilan Zerdoun. All rights reserved.
//

import Foundation
import UIKit

class Button: UIButton {
    
    var float: CGFloat = 10

    enum Style{
        case green, black, white, backgroundNone
    }
    
    var style: Style = .white{
        didSet{
            setStyle(style)
        }
    }
    
    private func setStyle(_ style: Style){
        switch style {
            case .green:
                backgroundColor = UIColor.greenLemon
                tintColor = UIColor.black
                layer.cornerRadius = 23
            case .black:
                backgroundColor = UIColor.declineBlack
                tintColor = UIColor.white
                layer.cornerRadius = 23
            case .white:
                backgroundColor = UIColor.white
                tintColor = UIColor.declineBlack
                layer.cornerRadius = 23
            case .backgroundNone:
                backgroundColor = .clear
                tintColor = UIColor.white
                layer.cornerRadius = 23
                layer.borderWidth = 1
                layer.borderColor = UIColor.greenLemon.cgColor
        }
    }
}
