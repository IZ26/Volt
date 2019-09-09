//
//  User.swift
//  Volt
//
//  Created by Ilan Zerdoun on 03/09/2019.
//  Copyright © 2019 Ilan Zerdoun. All rights reserved.
//

import Foundation

struct User{
    var image = String()
    var username = String()
    var firstName = String()
    var lastName = String()
    var location = String()
    var mail = String()
    var city = String()
    var age = Int()
    var cardValue = Int()
    var hand = String()
    var sport = String()
    var matchPlayed = String()
    var speed = Int()
    var endurance = Int()
    var serve = Int()
    var forehand = Int()
    var backhand = Int()
    
    
    public func calcCardValue(speedValue: Int, enduranceValue: Int, serveValue: Int, forehandValue: Int, backhandValue: Int) -> Int {
        var value = cardValue
        
        value = speedValue + enduranceValue + serveValue + forehandValue + backhandValue
        
        value = Int(value / 5)
        
        return value
    }
}
