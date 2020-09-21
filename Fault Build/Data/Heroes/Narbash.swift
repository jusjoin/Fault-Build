//
//  Narbash.swift
//  Fault Build
//
//  Created by Zane on 9/20/20.
//  Copyright © 2020 JusDev Studios. All rights reserved.
//
//   let heroData = try? newJSONDecoder().decode(HeroData.self, from: jsonData)

import Foundation

// MARK: - HeroData
class Narbash: Codable {
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
    let rmbAbility: NarbashRMBAbility
    let qAbility: NarbashQAbility
    let eAbility: NarbashEAbility
    let rAbility: NarbashRAbility
    let pAbility: NarbashPAbility
    
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
class NarbashEAbility: Codable {
    let name, eDescription, cooldown, resourceCost: String
    let radius, hPperRate, rate, scalingFactor: String

    enum CodingKeys: String, CodingKey {
        case name
        case eDescription = "description"
        case cooldown, resourceCost, radius, hPperRate, rate, scalingFactor
    }
}

// MARK: - P
class NarbashPAbility: Codable {
    let name, pDescription, mRegenperMissMana: String

    enum CodingKeys: String, CodingKey {
        case name
        case pDescription = "description"
        case mRegenperMissMana
    }
}

// MARK: - Q
class NarbashQAbility: Codable {
    let name, qDescription, cooldown, resourceCost: String
    let radius, bonusMoveSpeed, duration: String

    enum CodingKeys: String, CodingKey {
        case name
        case qDescription = "description"
        case cooldown, resourceCost, radius, bonusMoveSpeed, duration
    }
}

// MARK: - R
class NarbashRAbility: Codable {
    let name, rDescription, castTime, cooldown: String
    let resourceCost, radius, lifetime, channelMovementMultiplier: String
    let channelduration, slow, baseDamage, scalingFactor: String
    let rate, knockupspeed: String

    enum CodingKeys: String, CodingKey {
        case name
        case rDescription = "description"
        case castTime, cooldown, resourceCost, radius, lifetime, channelMovementMultiplier, channelduration, slow, baseDamage, scalingFactor, rate, knockupspeed
    }
}

// MARK: - Rmb
class NarbashRMBAbility: Codable {
    let name, rmbDescription, cooldown, resourceCost: String
    let range, speed, width, duration: String
    let baseDamage, scalingFactor: String

    enum CodingKeys: String, CodingKey {
        case name
        case rmbDescription = "description"
        case cooldown, resourceCost, range, speed, width, duration, baseDamage, scalingFactor
    }
}
