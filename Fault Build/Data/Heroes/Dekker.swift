//
//  Dekker.swift
//  Fault Build
//
//  Created by Zane on 9/17/20.
//  Copyright © 2020 JusDev Studios. All rights reserved.
//

//   let heroData = try? newJSONDecoder().decode(HeroData.self, from: jsonData)

import Foundation

// MARK: - HeroData
class Dekker: Codable {
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
    let rmbAbility: DekkerRMBAbility
    let qAbility: DekkerQAbility
    let eAbility: DekkerEAbility
    let rAbility: DekkerRAbility
    let pAbility: DekkerPAbility
    
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
class DekkerEAbility: Codable {
    let name, eDescription, readyMovementMultiplier, castTime: String
    let range, radius, cooldown, resourceCost: String
    let maxLifetime, slow, slowDuration, baseDamage: String
    let scalingFactor, pCTStartChargeDmg, recoveryTime: String

    enum CodingKeys: String, CodingKey {
        case name
        case eDescription = "description"
        case readyMovementMultiplier, castTime, range, radius, cooldown, resourceCost, maxLifetime, slow, slowDuration, baseDamage, scalingFactor, pCTStartChargeDmg, recoveryTime
    }
}

// MARK: - P
class DekkerPAbility: Codable {
    let name, pDescription, bombManaBack, maxBombManaBack: String
    let botManaBack, maxBotManaBack: String

    enum CodingKeys: String, CodingKey {
        case name
        case pDescription = "description"
        case bombManaBack, maxBombManaBack, botManaBack, maxBotManaBack
    }
}

// MARK: - Q
class DekkerQAbility: Codable {
    let name, qDescription, readyMovementMultiplier, castTime: String
    let cooldown, resourceCost, speed, maxBounceRange: String
    let radius, baseDamage, scalingFactor, minionDamageReduction: String
    let stunDuration, slowDuration, recoveryTime: String

    enum CodingKeys: String, CodingKey {
        case name
        case qDescription = "description"
        case readyMovementMultiplier, castTime, cooldown, resourceCost, speed, maxBounceRange, radius, baseDamage, scalingFactor, minionDamageReduction, stunDuration, slowDuration, recoveryTime
    }
}

// MARK: - R
class DekkerRAbility: Codable {
    let name, rDescription, readyMovementMultiplier, castTime: String
    let range, radius, cooldown, resourceCost: String
    let recoveryTime, effectDelay, fenceHeight, maxLifetime: String

    enum CodingKeys: String, CodingKey {
        case name
        case rDescription = "description"
        case readyMovementMultiplier, castTime, range, radius, cooldown, resourceCost, recoveryTime, effectDelay, fenceHeight, maxLifetime
    }
}

// MARK: - Rmb
class DekkerRMBAbility: Codable {
    let name, rmbDescription, castTime, cooldown: String
    let resourceCost, verticalDistance, horizontalDistance, moveSpeed: String
    let speedDuration, radius: String

    enum CodingKeys: String, CodingKey {
        case name
        case rmbDescription = "description"
        case castTime, cooldown, resourceCost, verticalDistance, horizontalDistance, moveSpeed, speedDuration, radius
    }
}
