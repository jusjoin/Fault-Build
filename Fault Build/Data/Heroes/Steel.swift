//
//  Steel.swift
//  Fault Build
//
//  Created by Zane on 9/20/20.
//  Copyright © 2020 JusDev Studios. All rights reserved.
//
//   let heroData = try? newJSONDecoder().decode(HeroData.self, from: jsonData)

import Foundation

// MARK: - HeroData
struct Steel: Codable {
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
    let rmbAbility: SteelRMBAbility
    let qAbility: SteelQAbility
    let eAbility: SteelEAbility
    let rAbility: SteelRAbility
    let pAbility: SteelPAbility
    
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
struct SteelEAbility: Codable {
    let name, eDescription, castRange, cooldown: String
    let resourceCost, aM, castingMovementModifier, width: String
    let depth, height, maxShieldLifetime, movementslow: String
    let slow, slowDuration: String

    enum CodingKeys: String, CodingKey {
        case name
        case eDescription = "description"
        case castRange, cooldown, resourceCost, aM, castingMovementModifier, width, depth, height, maxShieldLifetime, movementslow, slow, slowDuration
    }
}

// MARK: - P
struct SteelPAbility: Codable {
    let name, pDescription, maxStacks, eApStack: String
    let pStackDuration, cCReduction, minStacksforCCR: String

    enum CodingKeys: String, CodingKey {
        case name
        case pDescription = "description"
        case maxStacks, eApStack, pStackDuration, cCReduction, minStacksforCCR
    }
}

// MARK: - Q
struct SteelQAbility: Codable {
    let name, qDescription, readyMovementMultiplier, range: String
    let width, height, speed, cooldown: String
    let resourceCost, windupAnimationDuration, baseDamage, scalingFactor: String
    let displacementspeed, displacementangle, recoveryTime, recoveryMovementMultiplier: String

    enum CodingKeys: String, CodingKey {
        case name
        case qDescription = "description"
        case readyMovementMultiplier, range, width, height, speed, cooldown, resourceCost, windupAnimationDuration, baseDamage, scalingFactor, displacementspeed, displacementangle, recoveryTime, recoveryMovementMultiplier
    }
}

// MARK: - R
struct SteelRAbility: Codable {
    let name, rDescription, castTime, range: String
    let radius, cooldown, resourceCost, height: String
    let baseDamage, scalingFactor, knockupSpeed, stunDuration: String
    let recoveryTime: String

    enum CodingKeys: String, CodingKey {
        case name
        case rDescription = "description"
        case castTime, range, radius, cooldown, resourceCost, height, baseDamage, scalingFactor, knockupSpeed, stunDuration, recoveryTime
    }
}

// MARK: - Rmb
struct SteelRMBAbility: Codable {
    let name, rmbDescription, castTime, cooldown: String
    let resourceCost, animationDuration, aM, movementMultiplier: String
    let range, angle, baseDamage, scalingFactor: String
    let stunDuration, recoveryTime: String

    enum CodingKeys: String, CodingKey {
        case name
        case rmbDescription = "description"
        case castTime, cooldown, resourceCost, animationDuration, aM, movementMultiplier, range, angle, baseDamage, scalingFactor, stunDuration, recoveryTime
    }
}
