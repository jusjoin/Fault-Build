//
//  Muriel.swift
//  Fault Build
//
//  Created by Zane on 9/20/20.
//  Copyright © 2020 JusDev Studios. All rights reserved.
//

//   let heroData = try? newJSONDecoder().decode(HeroData.self, from: jsonData)

import Foundation

// MARK: - HeroData
class Muriel: Codable {
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
    let rmbAbility: MurielRMBAbility
    let qAbility: MurielQAbility
    let eAbility: MurielEAbility
    let rAbility: MurielRAbility
    let pAbility: MurielPAbility
    
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
class MurielEAbility: Codable {
    let name, eDescription, readyMovementMultiplier, range: String
    let radius, cooldown, resourceCost, maxLifetime: String
    let shield, shieldScaling, shieldDuration, baseDamage: String
    let scalingFactor: String

    enum CodingKeys: String, CodingKey {
        case name
        case eDescription = "description"
        case readyMovementMultiplier, range, radius, cooldown, resourceCost, maxLifetime, shield, shieldScaling, shieldDuration, baseDamage, scalingFactor
    }
}

// MARK: - P
class MurielPAbility: Codable {
    let name, pDescription, maxDivMarkStacks, rootperStack: String
    let dmgPerStack, markDuration, onTargetCooldown: String

    enum CodingKeys: String, CodingKey {
        case name
        case pDescription = "description"
        case maxDivMarkStacks, rootperStack, dmgPerStack, markDuration, onTargetCooldown
    }
}

// MARK: - Q
class MurielQAbility: Codable {
    let name, qDescription, readyMovementMultiplier, castTime: String
    let cooldown, resourceCost, speed, range: String
    let baseDamage, scalingFactor, slow, slowDuration: String

    enum CodingKeys: String, CodingKey {
        case name
        case qDescription = "description"
        case readyMovementMultiplier, castTime, cooldown, resourceCost, speed, range, baseDamage, scalingFactor, slow, slowDuration
    }
}

// MARK: - R
class MurielRAbility: Codable {
    let name, rDescription, readyTime, range: String
    let cooldown, resourceCost, shield, shieldDuration: String
    let shieldScaling, effectDelay, radius, radiusHeight: String
    let knockupSpeed: String

    enum CodingKeys: String, CodingKey {
        case name
        case rDescription = "description"
        case readyTime, range, cooldown, resourceCost, shield, shieldDuration, shieldScaling, effectDelay, radius, radiusHeight, knockupSpeed
    }
}

// MARK: - Rmb
class MurielRMBAbility: Codable {
    let name, rmbDescription, castTime, cooldown: String
    let resourceCost, speed, range, projRadius: String
    let lifetime, moveSpeed, speedDuration: String

    enum CodingKeys: String, CodingKey {
        case name
        case rmbDescription = "description"
        case castTime, cooldown, resourceCost, speed, range, projRadius, lifetime, moveSpeed, speedDuration
    }
}
