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
    
    // Font --> Poppins-Regular
    public class var placeholder: UIFont {
        return customFont(name: "Poppins-Regular", size: 12)
    }
    
    // Font --> ProximaNova-Semibold
    public class var titleFont: UIFont {
        return customFont(name: "ProximaNova-Semibold", size: 36)
    }
    public class var buttonFont: UIFont {
        return customFont(name: "ProximaNova-Semibold", size: 14)
    }
    
    
    // Font --> ProximaNova-Bold
}

