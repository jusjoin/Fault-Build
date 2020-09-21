//
//  Countess.swift
//  Fault Build
//
//  Created by Zane on 9/16/20.
//  Copyright © 2020 JusDev Studios. All rights reserved.
//

import Foundation

//   let heroData = try? newJSONDecoder().decode(HeroData.self, from: jsonData)

import Foundation

// MARK: - HeroData
class Countess: Codable {
    let info: HeroInfo
    let health, healthPerLevel: Double
    let healthRegenPerLevel, healthRegen, manaRegen: Double
    let mana, manaPerLevel: Double
    let manaRegenPerLevel: Double
    let physicalArmor: Double
    let physicalArmorPerLevel: Double
    let energyArmor: Double
    let energyArmorPerLevel: Double
    let moveSpeed: Double
    let lmbAbility: LMBAbility
    let rmbAbility: CountessRMBAbility
    let qAbility: CountessQAbility
    let eAbility: CountessEAbility
    let rAbility: CountessRAbility
    let pAbility: CountessPAbility
    
    enum CodingKeys: String, CodingKey {
        case info
        case health, healthPerLevel
        case healthRegen, healthRegenPerLevel
        case mana, manaPerLevel
        case manaRegen, manaRegenPerLevel
        case physicalArmor
        case physicalArmorPerLevel, energyArmor, energyArmorPerLevel
        case lmbAbility = "lmb"
        case rmbAbility = "rmb"
        case qAbility = "q"
        case eAbility = "e"
        case rAbility = "r"
        case pAbility = "p"
        case moveSpeed = "movespeed"
    }
}

// MARK: - E
class CountessEAbility: Codable {
    let name, eDescription, readyMovementMultiplier, cooldown: String
    let resourceCost, castTime, width, height: String
    let speed, range, baseDamage, scalingFactor: String
    let recoveryTime, recoveryMovementMultiplier: String

    enum CodingKeys: String, CodingKey {
        case name
        case eDescription = "description"
        case readyMovementMultiplier, cooldown, resourceCost, castTime, width, height, speed, range, baseDamage, scalingFactor, recoveryTime, recoveryMovementMultiplier
    }
}

// MARK: - Info
//class Info: Codable {
//    let basicRange, niche, role, damageType: String
//    let infoDescription: String
//
//    enum CodingKeys: String, CodingKey {
//        case basicRange, niche, role, damageType
//        case infoDescription = "description"
//    }
//}

// MARK: - P
class CountessPAbility: Codable {
    let name, pDescription, castMovementMultiplier, baseHealthonMinions: String
    let baseHealthonHeroes, duration: String

    enum CodingKeys: String, CodingKey {
        case name
        case pDescription = "description"
        case castMovementMultiplier
        case baseHealthonMinions = "%BaseHealthonMinions"
        case baseHealthonHeroes = "%BaseHealthonHeroes"
        case duration
    }
}

// MARK: - Q
class CountessQAbility: Codable {
    let name, qDescription, range, cooldown: String
    let resourceCost, initialRecoveryTime, baseDamage, scalingFactor: String
    let slow, slowDuration, recastDelay, recastTimeout: String

    enum CodingKeys: String, CodingKey {
        case name
        case qDescription = "description"
        case range, cooldown, resourceCost, initialRecoveryTime, baseDamage, scalingFactor, slow, slowDuration, recastDelay, recastTimeout
    }
}

// MARK: - R
class CountessRAbility: Codable {
    let name, rDescription, range, cooldown: String
    let resourceCost, channelDuration, duration, baseDamage: String
    let scalingFactor, recoveryTime: String

    enum CodingKeys: String, CodingKey {
        case name
        case rDescription = "description"
        case range, cooldown, resourceCost, channelDuration, duration, baseDamage, scalingFactor, recoveryTime
    }
}

// MARK: - Rmb
class CountessRMBAbility: Codable {
    let name, rmbDescription, castTime, cooldown: String
    let resourceCost, radius, height, bonusToPassive: String
    let baseDamage, scalingFactor, ofPassiveEffect, dmgBonusQ: String
    let dmgBonusE, dmgBonusR, duration, recoveryTime: String

    enum CodingKeys: String, CodingKey {
        case name
        case rmbDescription = "description"
        case castTime, cooldown, resourceCost, radius, height
        case bonusToPassive = "%BonusToPassive"
        case baseDamage, scalingFactor
        case ofPassiveEffect = "%ofPassiveEffect"
        case dmgBonusQ, dmgBonusE, dmgBonusR, duration, recoveryTime
    }
}
