//
//  Kwang.swift
//  Fault Build
//
//  Created by Zane on 9/20/20.
//  Copyright © 2020 JusDev Studios. All rights reserved.
//

//   let heroData = try? newJSONDecoder().decode(HeroData.self, from: jsonData)

import Foundation

// MARK: - HeroData
class Kwang: Codable {
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
    let rmbAbility: KwangRMBAbility
    let qAbility: KwangQAbility
    let eAbility: KwangEAbility
    let rAbility: KwangRAbility
    let pAbility: KwangPAbility
    
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
class KwangEAbility: Codable {
    let name, eDescription, cooldown, resourceCost: String
    let castTime, movementPenalty, swordRange, withoutSwRange: String
    let width, baseDamage, scalingFactor, enArShred: String
    let shredDuration, recoveryTime: String

    enum CodingKeys: String, CodingKey {
        case name
        case eDescription = "description"
        case cooldown, resourceCost, castTime, movementPenalty, swordRange, withoutSwRange, width, baseDamage, scalingFactor, enArShred, shredDuration, recoveryTime
    }
}

// MARK: - P
class KwangPAbility: Codable {
    let name, pDescription, aoeLifesteal: String

    enum CodingKeys: String, CodingKey {
        case name
        case pDescription = "description"
        case aoeLifesteal = "%AOELifesteal"
    }
}

// MARK: - Q
class KwangQAbility: Codable {
    let name, qDescription, range, radius: String
    let cooldown, resourceCost, casttime, effectDelay: String
    let height, baseDamage, scalingFactor, duration: String
    let recoveryTime: String

    enum CodingKeys: String, CodingKey {
        case name
        case qDescription = "description"
        case range, radius, cooldown, resourceCost, casttime, effectDelay, height, baseDamage, scalingFactor, duration, recoveryTime
    }
}

// MARK: - R
class KwangRAbility: Codable {
    let name, rDescription, cooldown, resourceCost: String
    let castTime, radius, baseDamage, zScalingFactor: String
    let pScalingFactor, slow, slowDuration, recoveryTime: String

    enum CodingKeys: String, CodingKey {
        case name
        case rDescription = "description"
        case cooldown, resourceCost, castTime, radius, baseDamage, zScalingFactor, pScalingFactor, slow, slowDuration, recoveryTime
    }
}

// MARK: - Rmb
class KwangRMBAbility: Codable {
    let name, rmbDescription, castTime, cooldown: String
    let resourceCost, aOERadius, height, lightningDamage: String
    let lightScFact, recoveryTime, shieldAmount, bHPScalingFactor: String
    let shieldDuration, shieldDamage, shieldScalingFactor, shDmgRadius: String

    enum CodingKeys: String, CodingKey {
        case name
        case rmbDescription = "description"
        case castTime, cooldown, resourceCost, aOERadius, height, lightningDamage, lightScFact, recoveryTime, shieldAmount, bHPScalingFactor, shieldDuration, shieldDamage, shieldScalingFactor, shDmgRadius
    }
}
