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
        case green, black, white,bordered, backgroundNone
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
                layer.cornerRadius = 20
            case .black:
                backgroundColor = UIColor.declineBlack
                tintColor = UIColor.white
                layer.cornerRadius = 20
            case .white:
                backgroundColor = UIColor.white
                tintColor = UIColor.declineBlack
                layer.cornerRadius = 20
            case .backgroundNone:
                backgroundColor = .clear
                tintColor = UIColor.white
                layer.cornerRadius = 20
                layer.borderWidth = 1
                layer.borderColor = UIColor.greenLemon.cgColor
        case .bordered:
            backgroundColor = .clear
            tintColor = UIColor.declineBlack
            layer.cornerRadius = 20
            layer.borderWidth = 1
            layer.borderColor = UIColor.greenLemon.cgColor
        }
    }
}

