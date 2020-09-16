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
    var name: String {get }
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
    func getBasicAttackDamage() -> Double
    func getBasicAttackDamagePerLevel() -> Double
    func getAttackSpeed() -> Double
    func getMoveSpeed() -> Int
    
//    func getAbilityImage(imageURL: String, completion: @escaping (UIImage?) -> ())
    
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
    case belica
    case boris
    case countess
    case dekker
    case gideon
    case greystone
    case grim
    case khaimera
    case kwang
    case murdock
    case muriel
    case narbash
    case sevarog
    case sparrow
    case steel
    case twinblast
        
    static func heroIDFromName(name: String) -> Int {
        var heroID = -1
        switch name {
        case Heroes.belica.name:
            heroID = Heroes.belica.rawValue

        case Heroes.boris.name:
            heroID = Heroes.boris.rawValue
            
        case Heroes.countess.name:
            heroID = Heroes.countess.rawValue
            
        case Heroes.dekker.name:
            heroID = Heroes.dekker.rawValue
            
        case Heroes.gideon.name:
            heroID = Heroes.gideon.rawValue
            
        case Heroes.greystone.name:
            heroID = Heroes.greystone.rawValue
            
        case Heroes.grim.name:
            heroID = Heroes.grim.rawValue
            
        case Heroes.khaimera.name:
            heroID = Heroes.khaimera.rawValue
            
        case Heroes.murdock.name:
            heroID = Heroes.murdock.rawValue
            
        case Heroes.muriel.name:
            heroID = Heroes.muriel.rawValue
            
        case Heroes.narbash.name:
            heroID = Heroes.narbash.rawValue
            
        case Heroes.sevarog.name:
            heroID = Heroes.sevarog.rawValue
            
        default:
            break
        }
        return heroID
    }
    
    var name: String {
        var heroName = ""
        switch self {
        case .belica:
            heroName = "Lt. Belica"
        case .boris:
            heroName = "Boris"
        case .countess:
            heroName = "Countess"
        case .dekker:
            heroName = "Dekker"
        case .gideon:
            heroName = "Gideon"
        case .greystone:
            heroName = "Greystone"
        case .grim:
            heroName = "Grim"
        case .khaimera:
            heroName = "Khaimera"
        case .kwang:
            heroName = "Kwang"
        case .murdock:
            heroName = "Murdock"
        case .muriel:
            heroName = "Muriel"
        case .narbash:
            heroName = "Narbash"
        case .sevarog:
            heroName = "Sevarog"
        case .sparrow:
            heroName = "Sparrow"
        case .steel:
            heroName = "Steel"
        case .twinblast:
            heroName = "Twinblast"
        }
        return heroName
    }
}

//enum HeroName: String, CaseIterable {
//    case belica = "Lt. Belica"
//    case boris = "Boris"
//    case countess = "Countess"
//    case dekker = "Dekker"
//    case gideon = "Gideon"
//    case greystone = "Greystone"
//    case grim = "Grim"
//    case Khaimera = "Khaimera"
//    case kwang = "Kwang"
//    case murdock = "Murdock"
//    case muriel = "Muriel"
//    case narbash = "Narbash"
//    case sevarog = "Sevarog"
//    case sparrow = "Sparrow"
//    case steel = "Steel"
//    case twinblast = "Twinblast"
//    
//}

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
