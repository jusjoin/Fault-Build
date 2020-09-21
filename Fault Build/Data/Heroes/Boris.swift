//
//  Boris.swift
//  Fault Build
//
//  Created by Zane on 9/15/20.
//  Copyright © 2020 JusDev Studios. All rights reserved.
//

import Foundation

//   let heroData = try? newJSONDecoder().decode(HeroData.self, from: jsonData)

// MARK: - HeroData
class Boris: Codable {
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
    let rmbAbility: BorisRMBAbility
    let qAbility: BorisQAbility
    let eAbility: BorisEAbility
    let rAbility: BorisRAbility
    let pAbility: BorisPAbility
    
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
class BorisEAbility: Codable {
    let name, eDescription, rateScale, energyperUnit: String
    let energyperJungleBuff, energyperHero, energyperCanister, maxTotalEnergy: String
    let pickupRadius, castTime, cooldown, resourceCost: String
    let animationRateScale, bLHealFactor, bLHealDmgFactor, movementSpeedBonus: String
    let buffDuration, unstoppableDuration, maxDurationOnGround: String

    enum CodingKeys: String, CodingKey {
        case name
        case eDescription = "description"
        case rateScale, energyperUnit, energyperJungleBuff, energyperHero, energyperCanister, maxTotalEnergy, pickupRadius, castTime, cooldown, resourceCost, animationRateScale, bLHealFactor, bLHealDmgFactor, movementSpeedBonus, buffDuration, unstoppableDuration, maxDurationOnGround
    }
}

// MARK: - P
class BorisPAbility: Codable {
    let name, pDescription, lifesteal, bBADmgPerSMHP: String
    let bBADmgPerTMHP: String

    enum CodingKeys: String, CodingKey {
        case name
        case pDescription = "description"
        case lifesteal
        case bBADmgPerSMHP = "bBADmgPer%SMHP"
        case bBADmgPerTMHP = "bBADmgPer%TMHP"
    }
}

// MARK: - Q
class BorisQAbility: Codable {
    let name, qDescription, triggerPCTMaxHealth, castTime: String
    let range, cooldown, resourceCost, duration: String
    let attackSpeedBonus, movementSpeedBonus: String

    enum CodingKeys: String, CodingKey {
        case name
        case qDescription = "description"
        case triggerPCTMaxHealth, castTime, range, cooldown, resourceCost, duration, attackSpeedBonus, movementSpeedBonus
    }
}

// MARK: - R
class BorisRAbility: Codable {
    let name, rDescription, range, cooldown: String
    let resourceCost, movementDuration, baseDamage, scalingFactor: String
    let bDmgPTrgtMissHP, hpExeThresh, recoveryTime: String

    enum CodingKeys: String, CodingKey {
        case name
        case rDescription = "description"
        case range, cooldown, resourceCost, movementDuration, baseDamage, scalingFactor
        case bDmgPTrgtMissHP = "%BDmgPTrgt%MissHP"
        case hpExeThresh = "%HPExeThresh"
        case recoveryTime
    }
}

// MARK: - Rmb
class BorisRMBAbility: Codable {
    let name, rmbDescription, leapDistance, duration: String
    let cooldown, resourceCost, baseBADamage: String

    enum CodingKeys: String, CodingKey {
        case name
        case rmbDescription = "description"
        case leapDistance, duration, cooldown, resourceCost, baseBADamage
    }
}
