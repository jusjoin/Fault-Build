//
//  Hero.swift
//  Fault Build
//
//  Created by Zane on 8/18/20.
//  Copyright © 2020 JusDev Studios. All rights reserved.
//

import Foundation
import UIKit

protocol Hero {
    var iconName: String {get }
    var bannerName: String {get }
    var eAbilityImageURL: String {get }
    var lmbAbilityImageURL: String {get }
    var pAbilityImageURL: String {get }
    var qAbilityImageURL: String {get }
    var rAbilityImageURL: String {get }
    var rmbAbilityImageURL: String {get }
        
    func getBaseMana() -> Int
    func getManaPerLevel() ->  Int
    func getBasicDefense() -> Int
    func getBasicDefensePerLevel() -> Double
    func getBaseHealth() -> Int
    func getHealthPerLevel() -> Int
    func getHealthRegen() -> Double
    func getHealthRegenPerLevel() -> Double
    func getManaRegen() -> Double
    func getManaRegenPerLevel() -> Double
    func getAbilityDefense() -> Double
    func getAbilityDefensePerLevel() -> Double
    func getBasicAttackDamage() -> Int
    func getBasicAttackDamagePerLevel() -> Double
    func getAttackSpeed() -> Double
    func getMoveSpeed() -> Int
    
    func getAbilityImage(imageURL: String, completion: @escaping (UIImage?) -> ())
    
    func getLMBAbility() -> LMBAbility
    func getPAbility() -> Ability
    func getQAbility() -> Ability
    func getEAbility() -> Ability
    func getRAbility() -> Ability
    func getRMBAbility() -> Ability
    //    func getLMBAbilityDetails() -> String
    
//    func getPAbilityName() -> String
//    func getPAbilityDetails() -> String
//    
//    func getQAbilityName() -> String
//    func getQAbilityDetails() -> String
//    
//    func getEAbilityName() -> String
//    func getEAbilityDetails() -> String
//    
//    func getRAbilityName() -> String
//    func getRAbilityDetails() -> String
//    
//    func getRMBAbilityName() -> String
//    func getRMBAbilityDetails() -> String
}

enum Heroes: Int, CaseIterable {
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


// MARK: - LMBAbility
//class LMBAbility: Codable {
//    let name, lmbDescription: String
//    let cooldown: Double
//    let range, physicalDamage, energyDamage, attackSpeedPerLevel: Int
//    let adaptiveDamagePerLevel: Double
//    let scalingFactor: String
//
//    enum CodingKeys: String, CodingKey {
//        case name
//        case lmbDescription = "description"
//        case cooldown, range, physicalDamage, energyDamage, attackSpeedPerLevel, adaptiveDamagePerLevel, scalingFactor
//    }
//
//    init(name: String, lmbDescription: String, cooldown: Double, range: Int, physicalDamage: Int, energyDamage: Int, attackSpeedPerLevel: Int, adaptiveDamagePerLevel: Double, scalingFactor: String) {
//        self.name = name
//        self.lmbDescription = lmbDescription
//        self.cooldown = cooldown
//        self.range = range
//        self.physicalDamage = physicalDamage
//        self.energyDamage = energyDamage
//        self.attackSpeedPerLevel = attackSpeedPerLevel
//        self.adaptiveDamagePerLevel = adaptiveDamagePerLevel
//        self.scalingFactor = scalingFactor
//    }
//
//    init(belicaLMBAbilityData: BelicaLMBAbility) {
//        self.name = belicaLMBAbilityData.name
//        self.lmbDescription = belicaLMBAbilityData.lmbDescription
//        self.cooldown = belicaLMBAbilityData.cooldown
//        self.range = belicaLMBAbilityData.range
//        self.physicalDamage = belicaLMBAbilityData.physicalDamage
//        self.energyDamage = belicaLMBAbilityData.energyDamage
//        self.attackSpeedPerLevel = belicaLMBAbilityData.attackSpeedPerLevel
//        self.adaptiveDamagePerLevel = belicaLMBAbilityData.adaptiveDamagePerLevel
//        self.scalingFactor = belicaLMBAbilityData.scalingFactor
//    }
//}
