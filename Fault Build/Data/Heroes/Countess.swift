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
struct Countess: Codable {
    let info: HeroInfo
    let health, healthPerLevel: Int
    let healthRegen, healthRegenPerLevel: Double
    let mana, manaPerLevel: Int
    let manaRegen, manaRegenPerLevel: Double
    let physicalArmor: Int
    let physicalArmorPerLevel, energyArmor, energyArmorPerLevel: Double
    let moveSpeed: Int
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
struct CountessEAbility: Codable {
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
//struct Info: Codable {
//    let basicRange, niche, role, damageType: String
//    let infoDescription: String
//
//    enum CodingKeys: String, CodingKey {
//        case basicRange, niche, role, damageType
//        case infoDescription = "description"
//    }
//}

// MARK: - P
struct CountessPAbility: Codable {
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
struct CountessQAbility: Codable {
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
struct CountessRAbility: Codable {
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
struct CountessRMBAbility: Codable {
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
