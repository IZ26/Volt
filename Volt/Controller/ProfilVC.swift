//
//  ProfilVC.swift
//  Volt
//
//  Created by Ilan Zerdoun on 03/09/2019.
//  Copyright © 2019 Ilan Zerdoun. All rights reserved.
//

import UIKit

class ProfilVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setNavBar()
    }
}

extension ProfilVC{
    func setNavBar(){

        self.navigationController?.navigationBar.tintColor = UIColor.declineBlack
        self.title = "Mon profil"
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.declineBlack, NSAttributedString.Key.font: UIFont.current]
        navigationController?.navigationBar.topItem?.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: self, action: nil)
    }
}
