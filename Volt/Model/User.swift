//
//  User.swift
//  Volt
//
//  Created by Ilan Zerdoun on 03/09/2019.
//  Copyright © 2019 Ilan Zerdoun. All rights reserved.
//

import Foundation

struct User{
    var image = "femme"
    var username = "angelique75"
    var firstName = "Angélique"
    var lastName = "Delcourt"
    var location = "6 km de chez vous"
    var mail = "angelique.delcourt@gmail.com"
    var city = "Paris"
    var age = 26
    var cardValue = Int()
    var hand = "Droitier"
    var sport = "Tennis"
    var matchPlayed = "27 parties"
    var speed = 78
    var endurance = 76
    var serve = 83
    var forehand = 78
    var backhand = 93
    
    
    public func calcCardValue() -> Int {
        var value = cardValue
        
        value = speed + endurance + serve + forehand + backhand
        
        value = Int(value / 5)
        
        return value
    }
}
