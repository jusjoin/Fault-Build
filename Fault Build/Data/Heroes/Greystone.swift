//
//  Greystone.swift
//  Fault Build
//
//  Created by Zane on 9/20/20.
//  Copyright © 2020 JusDev Studios. All rights reserved.
//

//   let heroData = try? newJSONDecoder().decode(HeroData.self, from: jsonData)

import Foundation

// MARK: - HeroData
class Greystone: Codable {
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
    let rmbAbility: GreystoneRMBAbility
    let qAbility: GreystoneQAbility
    let eAbility: GreystoneEAbility
    let rAbility: GreystoneRAbility
    let pAbility: GreystonePAbility
    
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
class GreystoneEAbility: Codable {
    let name, eDescription, cooldown, resourceCost: String
    let rateScale, castTime, range, angle: String
    let height, baseDamage, scalingFactor, disarmDuration: String
    let recovery: String

    enum CodingKeys: String, CodingKey {
        case name
        case eDescription = "description"
        case cooldown, resourceCost, rateScale, castTime, range, angle, height, baseDamage, scalingFactor, disarmDuration, recovery
    }
}

// MARK: - P
class GreystonePAbility: Codable {
    let name, pDescription, cooldown, pCDRedpBA: String

    enum CodingKeys: String, CodingKey {
        case name
        case pDescription = "description"
        case cooldown, pCDRedpBA
    }
}

// MARK: - Q
class GreystoneQAbility: Codable {
    let name, qDescription, castTime, cooldown: String
    let resourceCost, height, radius, lifetime: String
    let pProcpTH, baseDamage, scalingFactor, rate: String

    enum CodingKeys: String, CodingKey {
        case name
        case qDescription = "description"
        case castTime, cooldown, resourceCost, height, radius, lifetime, pProcpTH, baseDamage, scalingFactor, rate
    }
}

// MARK: - R
class GreystoneRAbility: Codable {
    let name, rDescription, cooldown, slowRadius: String
    let slowHeight, slow, slowDuration, radius: String
    let maxRangefromDeath, height, tarConTime, travelTime: String
    let delay, pCTBaseHPRes, pCTBaseManaRes, baseDamage: String
    let scalingFactor: String

    enum CodingKeys: String, CodingKey {
        case name
        case rDescription = "description"
        case cooldown, slowRadius, slowHeight, slow, slowDuration, radius, maxRangefromDeath, height, tarConTime, travelTime, delay, pCTBaseHPRes, pCTBaseManaRes, baseDamage, scalingFactor
    }
}

// MARK: - Rmb
class GreystoneRMBAbility: Codable {
    let name, rmbDescription, range, outerRadius: String
    let innerRadius, cooldown, resourceCost, time: String
    let baseDamage, scalingFactor, innerRadiusDmgBonus, recoveryTime: String

    enum CodingKeys: String, CodingKey {
        case name
        case rmbDescription = "description"
        case range, outerRadius, innerRadius, cooldown, resourceCost, time, baseDamage, scalingFactor, innerRadiusDmgBonus, recoveryTime
    }
}
