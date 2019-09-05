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
    public class var smallTitle: UIFont {
        return customFont(name: "ProximaNova-Semibold", size: 12)
    }
    public class var button: UIFont {
        return customFont(name: "ProximaNova-Semibold", size: 14)
    }
    public class var current: UIFont{
        return customFont(name: "ProximaNova-Semibold", size: 16)
    }
    public class var largeTitle: UIFont{
        return customFont(name: "ProximaNova-Semibold", size: 17)
    }
    public class var title: UIFont {
        return customFont(name: "ProximaNova-Semibold", size: 30)
    }
    
    // Font --> SF Compact Display
    public class var cardValue: UIFont {
        return customFont(name: "SFCompactDisplay-Semibold", size: 50)
    }
    
    // Font --> Lato-Regular
    public class var textExtraSmall: UIFont{
        return customFont(name: "Lato-Regular", size: 10)
    }
    public class var textSmall: UIFont{
        return customFont(name: "Lato-Regular", size: 12)
    }
    
    public class var textLarge: UIFont{
        return customFont(name: "Lato-Regular", size: 13)
    }
    
    public class var textMedium: UIFont{
        return customFont(name: "Lato-Regular", size: 15)
    }
}

