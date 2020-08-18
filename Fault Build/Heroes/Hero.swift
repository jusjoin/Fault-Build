//
//  Hero.swift
//  Fault Build
//
//  Created by Zane on 8/18/20.
//  Copyright © 2020 JusDev Studios. All rights reserved.
//

import Foundation

protocol Hero {
    var name: String { get }
    func getHeroIconName() -> String
    func getHeroBannerName() -> String
}

enum Heroes: Int {
    case belica = 0
        
    static func heroIDFromName(name: HeroName) -> Int {
        var heroID = -1
        switch name {
        case HeroName.belica:
            heroID = Heroes.belica.rawValue
            
        }
        return heroID
    }
}

enum HeroName: String {
    case belica = "Lt. Belica"
}
