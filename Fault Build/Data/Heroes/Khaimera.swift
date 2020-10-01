//
//  Khaimera.swift
//  Fault Build
//
//  Created by Zane on 9/20/20.
//  Copyright © 2020 JusDev Studios. All rights reserved.
//

//   let heroData = try? newJSONDecoder().decode(HeroData.self, from: jsonData)

import Foundation
import UIKit

// MARK: - HeroData
class Khaimera: Codable {
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
    let rmbAbility: KhaimeraRMBAbility
    let qAbility: KhaimeraQAbility
    let eAbility: KhaimeraEAbility
    let rAbility: KhaimeraRAbility
    let pAbility: KhaimeraPAbility
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
class KhaimeraEAbility: Codable {
    let name, eDescription, readyMovementMultiplier, castTime: String
    let cooldown, resourceCost, castAnimationTime1, castAnimationTime2: String
    let castMovementMultiplier, grantStacksEffectDelay, passiveStacks, bonusBaseBAD: String
    let bBBADDuration: String

    enum CodingKeys: String, CodingKey {
        case name
        case eDescription = "description"
        case readyMovementMultiplier, castTime, cooldown, resourceCost, castAnimationTime1, castAnimationTime2, castMovementMultiplier, grantStacksEffectDelay, passiveStacks, bonusBaseBAD, bBBADDuration
    }
}

// MARK: - P
class KhaimeraPAbility: Codable {
    let name, pDescription, bonusHPRegen, maxStackDuration: String
    let maxStacks: String

    enum CodingKeys: String, CodingKey {
        case name
        case pDescription = "description"
        case bonusHPRegen, maxStackDuration, maxStacks
    }
}

// MARK: - Q
class KhaimeraQAbility: Codable {
    let name, qDescription, castTime, cooldown: String
    let resourceCost, bAScalingFactor, maxNumberAttacks, maxDuration: String

    enum CodingKeys: String, CodingKey {
        case name
        case qDescription = "description"
        case castTime, cooldown, resourceCost, bAScalingFactor, maxNumberAttacks, maxDuration
    }
}

// MARK: - R
class KhaimeraRAbility: Codable {
    let name, rDescription, range, cooldown: String
    let resourceCost, channelDuration, passiveStacks, supression: String
    let baseDamage, scalingFactor, effect2Delay, radius: String
    let knockbackSpeed: String

    enum CodingKeys: String, CodingKey {
        case name
        case rDescription = "description"
        case range, cooldown, resourceCost, channelDuration, passiveStacks, supression, baseDamage, scalingFactor, effect2Delay, radius, knockbackSpeed
    }
}

// MARK: - Rmb
class KhaimeraRMBAbility: Codable {
    let name, rmbDescription, range, cooldown: String
    let resourceCost, effectDelay, additionalStacks, baseDamage: String
    let scalingFactor, slow, duration: String

    enum CodingKeys: String, CodingKey {
        case name
        case rmbDescription = "description"
        case range, cooldown, resourceCost, effectDelay, additionalStacks, baseDamage, scalingFactor, slow, duration
    }
}

