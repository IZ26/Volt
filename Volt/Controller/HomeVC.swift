//
//  HomeVC.swift
//  Volt
//
//  Created by Ilan Zerdoun on 03/09/2019.
//  Copyright © 2019 Ilan Zerdoun. All rights reserved.
//

import UIKit
import Koloda
import FirebaseDatabase

class HomeVC: UIViewController, KolodaViewDelegate, KolodaViewDataSource {
    
    @IBOutlet var kolodaView: KolodaView!
    @IBOutlet weak var swipeRightButton: UIButton!
    @IBOutlet weak var swipeLeftButton: UIButton!
    @IBAction func swipeRight(_ sender: Any) {
        kolodaView.swipe(.right)
    }
    @IBAction func swipeLeft(_ sender: Any) {
        kolodaView.swipe(.left)
    }
    
    var users: Array<User> = []
    
    var ref: DatabaseReference!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setStyle()
        
        kolodaView.dataSource = self
        kolodaView.delegate = self
        
        getAllUsers()
    }
    
    func getAllUsers(){
        ref = Database.database().reference().child("users")
        
        ref.observe(.value, with: { (snapshot) in
            if snapshot.childrenCount > 0{
                for user in snapshot.children.allObjects as! [DataSnapshot]{
                    
                    var dataUser = User()
                    
                    let userObject = user.value as? [String: AnyObject]
                    let firstname = userObject?["firstname"]
                    let lastName = userObject?["lastname"]
                    let city = userObject?["city"]
                    let speed = userObject?["speed"]
                    let endurance = userObject?["endurance"]
                    let serve = userObject?["serve"]
                    let forehand = userObject?["forehand"]
                    let backhand = userObject?["backhand"]
                    let sport = userObject?["sport"]
                    let age = userObject?["age"]
                    let gamePlayed = userObject?["gameplayed"]
                    let hand = userObject?["hand"]
                    
                    dataUser.firstName = (firstname as! String?)!
                    dataUser.lastName = (lastName as! String?)!
                    dataUser.city = (city as! String?)!
                    dataUser.speed = Int((speed as! String?)!)!
                    dataUser.endurance = Int((endurance as! String?)!)!
                    dataUser.serve =  Int((serve as! String?)!)!
                    dataUser.forehand = Int((forehand as! String?)!)!
                    dataUser.backhand = Int((backhand as! String?)!)!
                    dataUser.sport = (sport as! String?)!
                    dataUser.age = Int((age as! String?)!)!
                    dataUser.matchPlayed = (gamePlayed as! String?)!
                    dataUser.hand = (hand as! String?)!
                    
                    self.users.append(dataUser)
                }
            }
            DispatchQueue.main.async {
                self.kolodaView.reloadData()
            }
        })
    }
    
    func kolodaNumberOfCards(_ koloda:KolodaView) -> Int {
        return users.count
    }
    
    func kolodaSpeedThatCardShouldDrag(_ koloda: KolodaView) -> DragSpeed {
        return .default
    }
    
    func koloda(_ koloda: KolodaView, viewForCardAt index: Int) -> UIView {
        let view = CardProfil()
        
        let card = users[index]
        
        view.profilName.text = "\(card.firstName) \(card.lastName)"
        view.profilLocation.text = "\(card.city)"
        view.speedValue.text = "\(card.speed)"
        view.enduranceValue.text = "\(card.endurance)"
        view.serveValue.text = "\(card.serve)"
        view.forehandValue.text = "\(card.forehand)"
        view.backhandValue.text = "\(card.backhand)"
        view.profilValue.text = "\(card.calcCardValue(speedValue: card.serve, enduranceValue: card.endurance, serveValue: card.serve, forehandValue: card.forehand, backhandValue: card.backhand))"
        view.profilSport.text = "\(card.sport.uppercased())"
        view.profilAge.text = "\(card.age) ans"
        view.profilHand.text = "\(card.hand.uppercased())"
        
        let gamePlayed = Int(card.matchPlayed)
        
        if gamePlayed! > 1 {
            view.profilGamePlayed.text = "\(card.matchPlayed) parties"
        }
        else{
            view.profilGamePlayed.text = "\(card.matchPlayed) partie"
        }
        
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
