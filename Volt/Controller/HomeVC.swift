//
//  HomeVC.swift
//  Volt
//
//  Created by Ilan Zerdoun on 03/09/2019.
//  Copyright © 2019 Ilan Zerdoun. All rights reserved.
//

import UIKit
import Koloda

class HomeVC: UIViewController {
    
    @IBOutlet var kolodaView: KolodaView!
    @IBOutlet weak var swipeRightButton: UIButton!
    @IBOutlet weak var swipeLeftButton: UIButton!
    @IBAction func swipeRight(_ sender: Any) {
        kolodaView.swipe(.right)
    }
    @IBAction func swipeLeft(_ sender: Any) {
        kolodaView.swipe(.left)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setStyle()
        
        kolodaView.dataSource = self
        kolodaView.delegate = self
        
        getAllFont()
    }
    
    func getAllFont(){
        for family: String in UIFont.familyNames
        {
            print(family)
            for names: String in UIFont.fontNames(forFamilyName: family)
            {
                print("== \(names)")
            }
        }
    }

}

extension HomeVC: KolodaViewDelegate {
    func kolodaDidRunOutOfCards(_ koloda: KolodaView) {
        koloda.reloadData()
    }
}

extension HomeVC: KolodaViewDataSource {
    
    func kolodaNumberOfCards(_ koloda:KolodaView) -> Int {
        return 10
    }
    
    func kolodaSpeedThatCardShouldDrag(_ koloda: KolodaView) -> DragSpeed {
        return .default
    }
    
    func koloda(_ koloda: KolodaView, viewForCardAt index: Int) -> UIView {
        let view = CardProfil()
        
        return view
    }
    
    func koloda(_ koloda: KolodaView, viewForCardOverlayAt index: Int) -> OverlayView? {
        return Bundle.main.loadNibNamed("OverlayCard", owner: self, options: nil)?[0] as? OverlayView
    }
}

extension HomeVC{
    func setStyle(){
        swipeLeftButton.layer.cornerRadius = swipeLeftButton.bounds.height / 2
        swipeLeftButton.layer.shadowColor = UIColor.declineBlack.cgColor
        swipeLeftButton.layer.shadowOffset = .zero
        swipeLeftButton.layer.shadowOpacity = 0.2
        swipeLeftButton.layer.shadowRadius = 10
        
        swipeRightButton.layer.cornerRadius =
            swipeRightButton.bounds.height / 2
        swipeRightButton.layer.shadowColor = UIColor.declineBlack.cgColor
        swipeRightButton.layer.shadowOffset = .zero
        swipeRightButton.layer.shadowOpacity = 0.2
        swipeRightButton.layer.shadowRadius = 10
    }
}
