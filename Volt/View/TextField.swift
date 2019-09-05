//
//  TextField.swift
//  Volt
//
//  Created by Ilan Zerdoun on 21/06/2019.
//  Copyright © 2019 Ilan Zerdoun. All rights reserved.
//

import Foundation
import UIKit

class TextField: UITextField{
    
    let padding = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
    
    enum Style{
        case standard, bordered
    }
    
    var style: Style = .standard{
        didSet{
            setStyle(style)
        }
    }
    
    override open func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    
    override open func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    
    override open func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    
    private func setStyle(_ style: Style){
        
        
        
        switch style {
        case .standard:
            layer.cornerRadius = layer.bounds.height / 2
            layer.masksToBounds = true
        case .bordered:
            layer.cornerRadius = layer.bounds.height / 2
            layer.masksToBounds = false
            layer.borderWidth = 0.25
            layer.borderColor = UIColor.declineBlack.cgColor
        }
    }
}
