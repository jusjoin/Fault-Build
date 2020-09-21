//
//  Sparrow.swift
//  Fault Build
//
//  Created by Zane on 9/20/20.
//  Copyright © 2020 JusDev Studios. All rights reserved.
//

import Foundation

// MARK: - HeroData
class Sparrow: Codable {
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
    let rmbAbility: SparrowRMBAbility
    let qAbility: SparrowQAbility
    let eAbility: SparrowEAbility
    let rAbility: SparrowRAbility
    let pAbility: SparrowPAbility
    
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
class SparrowEAbility: Codable {
    let name, eDescription, cooldown, resourceCost: String
    let exPassStackpHit, pStacksonEHit, buffDuration, slow: String
    let slowDuration: String

    enum CodingKeys: String, CodingKey {
        case name
        case eDescription = "description"
        case cooldown, resourceCost, exPassStackpHit, pStacksonEHit, buffDuration, slow, slowDuration
    }
}

// MARK: - P
class SparrowPAbility: Codable {
    let name, pDescription, bonusBADmgpStack, maxStacks: String
    let stackDurationAdditive: String

    enum CodingKeys: String, CodingKey {
        case name
        case pDescription = "description"
        case bonusBADmgpStack, maxStacks, stackDurationAdditive
    }
}

// MARK: - Q
class SparrowQAbility: Codable {
    let name, qDescription, castTime, range: String
    let radius, cooldown, resourceCost, effectDelay: String
    let lifetime, rate, baseDamage, scalingFactor: String
    let eStackGainperRate: String

    enum CodingKeys: String, CodingKey {
        case name
        case qDescription = "description"
        case castTime, range, radius, cooldown, resourceCost, effectDelay, lifetime, rate, baseDamage, scalingFactor, eStackGainperRate
    }
}

// MARK: - R
class SparrowRAbility: Codable {
    let name, rDescription, cooldown, resourceCost: String
    let duration, sideProjectiles, sideProjectileAngle, sPDmg: String

    enum CodingKeys: String, CodingKey {
        case name
        case rDescription = "description"
        case cooldown, resourceCost, duration, sideProjectiles, sideProjectileAngle
        case sPDmg = "sPDmg%"
    }
}

// MARK: - Rmb
class SparrowRMBAbility: Codable {
    let name, rmbDescription, castTime, minimumChannelTime: String
    let startingChannelDamage, endChannelDamage, maxDamageChannelTime, cooldown: String
    let resourceCost, castMovementMultiplier, range, projectileSpeed: String
    let baseDamage, scalingFactor: String

    enum CodingKeys: String, CodingKey {
        case name
        case rmbDescription = "description"
        case castTime, minimumChannelTime, startingChannelDamage, endChannelDamage, maxDamageChannelTime, cooldown, resourceCost, castMovementMultiplier, range, projectileSpeed, baseDamage, scalingFactor
    }
}
