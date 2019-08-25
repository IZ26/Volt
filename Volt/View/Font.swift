//
//  Font.swift
//  Volt
//
//  Created by Ilan Zerdoun on 21/06/2019.
//  Copyright © 2019 Ilan Zerdoun. All rights reserved.
//

import Foundation
import UIKit

extension UIFont {

    // Function customFont
    public class func customFont(name: String, size: CGFloat) -> UIFont {
        let font = UIFont(name: name, size: size)
        return font!
    }

    
    // Font --> ProximaNova-Semibold
    public class var title: UIFont {
        return customFont(name: "ProximaNova-Semibold", size: 30)
    }
    public class var button: UIFont {
        return customFont(name: "ProximaNova-Semibold", size: 14)
    }
    public class var current: UIFont{
        return customFont(name: "ProximaNova-Semibold", size: 16)
    }
    
    // Font --> Lato-Regular
    public class var textSmall: UIFont{
        return customFont(name: "Lato-Regular", size: 12)
    }
    
    public class var textMedium: UIFont{
        return customFont(name: "Lato-Regular", size: 15)
    }
}

