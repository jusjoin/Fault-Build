//
//  Hero.swift
//  Fault Build
//
//  Created by Zane on 8/16/20.
//  Copyright © 2020 JusDev Studios. All rights reserved.
//

//   let hero = try? JSONDecoder().decode(Belica.self, from: json)


import Foundation

// MARK: - Belica
class Belica: Codable, Hero {
    let info: BelicaInfo
    let health, healthPerLevel: Int
    let healthRegen, healthRegenPerLevel: Double
    let mana, manaPerLevel: Int
    let manaRegen, manaRegenPerLevel: Double
    let physicalArmor: Int
    let physicalArmorPerLevel, energyArmor, energyArmorPerLevel: Double
    let moveSpeed: Int
    let lmbAbility: LMBAbility
    let rmbAbility: BelicaEAbility
    let qAbility: BelicaQAbility
    let eAbility: BelicaEAbility
    let rAbility: BelicaRAbility
    let pAbility: BelicaPAbility
    
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

// MARK: - BelicaInfo
class BelicaInfo: Codable {
    let basicRange, niche, role, damageType: String
    let infoDescription: String

    enum CodingKeys: String, CodingKey {
        case basicRange, niche, role, damageType
        case infoDescription = "description"
    }
}

// MARK: - BelicaEAbility
class BelicaEAbility: Codable, Ability {
    let name, eDescription: String
    let xLevel: String?
    let range, radius, cooldown, resourceCost: String
    let lifetime: String?
    let baseDamage, scalingFactor: String
    let delay, manaperunithit: String?

    enum CodingKeys: String, CodingKey {
        case name
        case eDescription = "description"
        case xLevel, range, radius, cooldown, resourceCost, lifetime, baseDamage, scalingFactor, delay, manaperunithit
    }
}

// MARK: - BelicaPAbility
class BelicaPAbility: Codable, Ability {
    let name, pDescription, readyMovementMultiplier, baseDamage: String
    let scalingFactor: String

    enum CodingKeys: String, CodingKey {
        case name
        case pDescription = "description"
        case readyMovementMultiplier, baseDamage, scalingFactor
    }
}

// MARK: - BelicaQAbility
class BelicaQAbility: Codable, Ability {
    let name, qDescription, level, cooldown: String
    let resourceCost, castTime, range, width: String
    let speed, height, launchspeed, baseDamage: String
    let scalingFactor, duration: String

    enum CodingKeys: String, CodingKey {
        case name
        case qDescription = "description"
        case level, cooldown, resourceCost, castTime, range, width, speed, height, launchspeed, baseDamage, scalingFactor, duration
    }
}

// MARK: - BelicaRAbility
class BelicaRAbility: Codable, Ability {
    let name, rDescription, readyMovementMultiplier, range: String
    let cooldown, resourceCost, castTime, baseDamage: String
    let scalingFactor, recoveryTime, missingManaPCT, missingManaPCTMax: String

    enum CodingKeys: String, CodingKey {
        case name
        case rDescription = "description"
        case readyMovementMultiplier, range, cooldown, resourceCost, castTime, baseDamage, scalingFactor, recoveryTime, missingManaPCT, missingManaPCTMax
    }
}
