//
//  HomeVC.swift
//  Volt
//
//  Created by Ilan Zerdoun on 03/09/2019.
//  Copyright © 2019 Ilan Zerdoun. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {

    @IBOutlet weak var profilCard: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setStyle()
    }
}

extension HomeVC{
    func setStyle(){
    profilCard.layer.cornerRadius = 15
    }
}
