//
//  CompetenceComponent.swift
//  Volt
//
//  Created by Ilan Zerdoun on 05/09/2019.
//  Copyright © 2019 Ilan Zerdoun. All rights reserved.
//

import UIKit

class CompetenceComponent: UIView{
    enum Style {
        case bordered
    }
    
    var style: Style = .bordered{
        didSet{
            setStyle(style)
        }
    }
    
    private func setStyle(_ style: Style){
        
        switch style {
        case .bordered:
            layer.cornerRadius = layer.bounds.height / 2
            backgroundColor = UIColor(white: 1, alpha: 0)
            layer.borderWidth = 1
            layer.borderColor = UIColor.greenLemon.cgColor
        }
    }
}
