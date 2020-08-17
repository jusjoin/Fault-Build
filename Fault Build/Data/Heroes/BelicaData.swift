//
//  HeroData.swift
//  Fault Build
//
//  Created by Zane on 8/16/20.
//  Copyright © 2020 JusDev Studios. All rights reserved.
//

//   let hero = try? JSONDecoder().decode(BelicaData.self, from: jsonData)


import Foundation

// MARK: - BelicaData
struct BelicaData: Codable {
    let info: BelicaInfoData
    let health, healthPerLevel: Int
    let healthRegen, healthRegenPerLevel: Double
    let mana, manaPerLevel: Int
    let manaRegen, manaRegenPerLevel: Double
    let physicalArmor: Int
    let physicalArmorPerLevel, energyArmor, energyArmorPerLevel: Double
    let moveSpeed: Int
    let lmbAbility: BelicaLMBAbilityData
    let rmbAbility: BelicaEAbilityData
    let qAbility: BelicaQAbilityData
    let eAbility: BelicaEAbilityData
    let rAbility: BelicaRAbilityData
    let pAbility: BelicaPAbilityData
    
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

// MARK: - BelicaEAbilityData
struct BelicaEAbilityData: Codable {
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

// MARK: - BelicaInfoData
struct BelicaInfoData: Codable {
    let basicRange, niche, role, damageType: String
    let infoDescription: String

    enum CodingKeys: String, CodingKey {
        case basicRange, niche, role, damageType
        case infoDescription = "description"
    }
}

// MARK: - BelicaLMBAbilityData
struct BelicaLMBAbilityData: Codable {
    let name, lmbDescription: String
    let cooldown: Double
    let range, physicalDamage, energyDamage, attackSpeedPerLevel: Int
    let adaptiveDamagePerLevel: Double
    let scalingFactor: String

    enum CodingKeys: String, CodingKey {
        case name
        case lmbDescription = "description"
        case cooldown, range, physicalDamage, energyDamage, attackSpeedPerLevel, adaptiveDamagePerLevel, scalingFactor
    }
}

// MARK: - BelicaPAbilityData
struct BelicaPAbilityData: Codable {
    let name, pDescription, readyMovementMultiplier, baseDamage: String
    let scalingFactor: String

    enum CodingKeys: String, CodingKey {
        case name
        case pDescription = "description"
        case readyMovementMultiplier, baseDamage, scalingFactor
    }
}

// MARK: - BelicaQAbilityData
struct BelicaQAbilityData: Codable {
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

// MARK: - BelicaRAbilityData
struct BelicaRAbilityData: Codable {
    let name, rDescription, readyMovementMultiplier, range: String
    let cooldown, resourceCost, castTime, baseDamage: String
    let scalingFactor, recoveryTime, missingManaPCT, missingManaPCTMax: String

    enum CodingKeys: String, CodingKey {
        case name
        case rDescription = "description"
        case readyMovementMultiplier, range, cooldown, resourceCost, castTime, baseDamage, scalingFactor, recoveryTime, missingManaPCT, missingManaPCTMax
    }
}
