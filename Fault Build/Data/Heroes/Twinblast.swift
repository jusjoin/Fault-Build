//
//  Twinblast.swift
//  Fault Build
//
//  Created by Zane on 9/20/20.
//  Copyright © 2020 JusDev Studios. All rights reserved.
//
//   let heroData = try? newJSONDecoder().decode(HeroData.self, from: jsonData)

import Foundation
import UIKit

// MARK: - HeroData
struct Twinblast: Codable {
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
    let rmbAbility: TwinblastRMBAbility
    let qAbility: TwinblastQAbility
    let eAbility: TwinblastEAbility
    let rAbility: TwinblastRAbility
    let pAbility: TwinblastPAbility
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
struct TwinblastEAbility: Codable {
    let name, eDescription, cooldown, resourceCost: String
    let distance, height, duration, recoveryTime: String
    let charges, grenadeChargeGainedPerRoll: String

    enum CodingKeys: String, CodingKey {
        case name
        case eDescription = "description"
        case cooldown, resourceCost, distance, height, duration, recoveryTime, charges, grenadeChargeGainedPerRoll
    }
}

// MARK: - P
struct TwinblastPAbility: Codable {
    let name, pDescription, moveSpeedpSt, maxStacks: String
    let duration: String

    enum CodingKeys: String, CodingKey {
        case name
        case pDescription = "description"
        case moveSpeedpSt = "%MoveSpeedpSt"
        case maxStacks, duration
    }
}

// MARK: - Q
struct TwinblastQAbility: Codable {
    let name, qDescription, holdtimethreshold, maxRange: String
    let radius, chargeshotRadius, cooldown, maxCharges: String
    let chargedShotCharges, resourceCost, resourceCostCharged, castTimeChargedGrenade: String
    let animationRateScale, speed, width, effectDelay: String
    let baseDamage, scalingFactor, slow, slowDuration: String
    let slowDurationChargedGrenade, recoveryTimeSingleGrenade, recoveryTimeChargedBlast, recoveryAnimationRateScale: String
    let internalgrenadecooldown: String

    enum CodingKeys: String, CodingKey {
        case name
        case qDescription = "description"
        case holdtimethreshold, maxRange, radius, chargeshotRadius, cooldown, maxCharges, chargedShotCharges, resourceCost, resourceCostCharged, castTimeChargedGrenade, animationRateScale, speed, width, effectDelay, baseDamage, scalingFactor, slow, slowDuration, slowDurationChargedGrenade, recoveryTimeSingleGrenade, recoveryTimeChargedBlast, recoveryAnimationRateScale, internalgrenadecooldown
    }
}

// MARK: - R
struct TwinblastRAbility: Codable {
    let name, rDescription, cooldown, resourceCost: String
    let castMovementMultiplier, sPDmg, duration: String

    enum CodingKeys: String, CodingKey {
        case name
        case rDescription = "description"
        case cooldown, resourceCost, castMovementMultiplier
        case sPDmg = "sPDmg%"
        case duration
    }
}

// MARK: - Rmb
struct TwinblastRMBAbility: Codable {
    let name, rmbDescription, cooldown, resourceCost: String
    let attackSpeed, aSPPS, bBBADPPSt, buffDuration: String

    enum CodingKeys: String, CodingKey {
        case name
        case rmbDescription = "description"
        case cooldown, resourceCost, attackSpeed
        case aSPPS = "aSpPS"
        case bBBADPPSt = "bBBADpPSt"
        case buffDuration
    }
}
