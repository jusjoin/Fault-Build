//
//  Gideon.swift
//  Fault Build
//
//  Created by Zane on 9/20/20.
//  Copyright © 2020 JusDev Studios. All rights reserved.
//

//   let heroData = try? newJSONDecoder().decode(HeroData.self, from: jsonData)

import Foundation
import UIKit

// MARK: - HeroData
class Gideon: Codable {
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
    let rmbAbility: GideonRMBAbility
    let qAbility: GideonQAbility
    let eAbility: GideonEAbility
    let rAbility: GideonRAbility
    let pAbility: GideonPAbility
    var iconImage: UIImage?
    
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
class GideonEAbility: Codable {
    let name, eDescription, distance, cooldown: String
    let resourceCost, castTime, radius, height: String
    let lifetime: String

    enum CodingKeys: String, CodingKey {
        case name
        case eDescription = "description"
        case distance, cooldown, resourceCost, castTime, radius, height, lifetime
    }
}

// MARK: - P
class GideonPAbility: Codable {
    let name, pDescription, triggerCooldown, movementSlow: String
    let slowDuration, triggerWindow, lifetime: String

    enum CodingKeys: String, CodingKey {
        case name
        case pDescription = "description"
        case triggerCooldown, movementSlow, slowDuration, triggerWindow, lifetime
    }
}

// MARK: - Q
class GideonQAbility: Codable {
    let name, qDescription, range, radius: String
    let cooldown, resourceCost, castTime, castMovementMultiplier: String
    let baseDamage, scalingFactor, recoveryTime: String

    enum CodingKeys: String, CodingKey {
        case name
        case qDescription = "description"
        case range, radius, cooldown, resourceCost, castTime, castMovementMultiplier, baseDamage, scalingFactor, recoveryTime
    }
}

// MARK: - R
class GideonRAbility: Codable {
    let name, rDescription, castTime, cooldown: String
    let resourceCost, height, radius, duration: String
    let baseAmount, enemyFactor, shieldDuration, shieldDecayDelay: String
    let baseDamage, scalingFactor, rate, pull: String

    enum CodingKeys: String, CodingKey {
        case name
        case rDescription = "description"
        case castTime, cooldown, resourceCost, height, radius, duration, baseAmount, enemyFactor, shieldDuration, shieldDecayDelay, baseDamage, scalingFactor, rate, pull
    }
}

// MARK: - Rmb
class GideonRMBAbility: Codable {
    let name, rmbDescription, cooldown, resourceCost: String
    let castTime, speed, projectileRadius, maxRange: String
    let radius, baseDamage, scalingFactor, recoveryTime: String
    let minionDmgModifier: String

    enum CodingKeys: String, CodingKey {
        case name
        case rmbDescription = "description"
        case cooldown, resourceCost, castTime, speed, projectileRadius, maxRange, radius, baseDamage, scalingFactor, recoveryTime, minionDmgModifier
    }
}
