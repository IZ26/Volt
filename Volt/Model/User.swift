//
//  User.swift
//  Volt
//
//  Created by Ilan Zerdoun on 03/09/2019.
//  Copyright © 2019 Ilan Zerdoun. All rights reserved.
//

import Foundation

struct User{
    var image = "avatar"
    var username = "ryan75"
    var firstName = "Ryan"
    var lastName = "Reynolds"
    var location = "Paris"
    var mail = "ryan@gmail.com"
    var city = "Paris"
    var age = 26
    var cardValue = 68
    var hand = "Droitier"
    var sport = "Tennis"
    var matchPlayed = "27 parties"
    var speed = 78
    var endurance = 53
    var serve = 45
    var forehand = 38
    var backhand = 73
    
    
    public func calcCardValue(speedValue: Int, enduranceValue: Int, serveValue: Int, forehandValue: Int, backhandValue: Int) -> Int {
        var value = cardValue
        
        value = speedValue + enduranceValue + serveValue + forehandValue + backhandValue
        
        value = Int(value / 5)
        
        return value
    }
}
