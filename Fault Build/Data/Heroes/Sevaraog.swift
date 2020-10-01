//
//  Sevaraog.swift
//  Fault Build
//
//  Created by Zane on 9/20/20.
//  Copyright © 2020 JusDev Studios. All rights reserved.
//

import Foundation

//   let heroData = try? newJSONDecoder().decode(HeroData.self, from: jsonData)

import Foundation
import UIKit

// MARK: - HeroData
class Sevarog: Codable {
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
    let rmbAbility: SevarogRMBAbility
    let qAbility: SevarogQAbility
    let eAbility: SevarogEAbility
    let rAbility: SevarogRAbility
    let pAbility: SevarogPAbility
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
class SevarogEAbility: Codable {
    let name, eDescription, range, radius: String
    let cooldown, resourceCost, castTime, subjugationAnimationRateScale: String
    let baseDamage, scalingFactor, rootDurationperPassiveTier, slow: String
    let slowDuration: String

    enum CodingKeys: String, CodingKey {
        case name
        case eDescription = "description"
        case range, radius, cooldown, resourceCost, castTime, subjugationAnimationRateScale, baseDamage, scalingFactor, rootDurationperPassiveTier, slow, slowDuration
    }
}

// MARK: - P
class SevarogPAbility: Codable {
    let name, pDescription, stacksperMinionKill, stacksperHeroRaptorOPKill: String
    let healthPerStack, siphonDamagePerStack, stackstoreachTier, bonusHPatEachTier: String
    let bonusZapPoweratEachTier: String

    enum CodingKeys: String, CodingKey {
        case name
        case pDescription = "description"
        case stacksperMinionKill, stacksperHeroRaptorOPKill, healthPerStack, siphonDamagePerStack, stackstoreachTier, bonusHPatEachTier, bonusZapPoweratEachTier
    }
}

// MARK: - Q
class SevarogQAbility: Codable {
    let name, qDescription, readyMovementMultiplier, rangePassiveTier: String
    let widthPassiveTier, cooldown, resourceCost, castTime: String
    let passiveGainOnKillMultiplier, baseDamage, scalingFactor: String

    enum CodingKeys: String, CodingKey {
        case name
        case qDescription = "description"
        case readyMovementMultiplier
        case rangePassiveTier = "range/PassiveTier"
        case widthPassiveTier = "width/PassiveTier"
        case cooldown, resourceCost, castTime, passiveGainOnKillMultiplier, baseDamage, scalingFactor
    }
}

// MARK: - R
class SevarogRAbility: Codable {
    let name, rDescription, range, angle: String
    let cooldown, resourceCost, castTime, castMovementMultiplier: String
    let baseDamage, scalingFactor, displacementAngle, displacementSpeed: String

    enum CodingKeys: String, CodingKey {
        case name
        case rDescription = "description"
        case range, angle, cooldown, resourceCost, castTime, castMovementMultiplier, baseDamage, scalingFactor, displacementAngle, displacementSpeed
    }
}

// MARK: - Rmb
class SevarogRMBAbility: Codable {
    let name, rmbDescription, cooldown, resourceCost: String
    let distancePerPassiveTier, speed: String

    enum CodingKeys: String, CodingKey {
        case name
        case rmbDescription = "description"
        case cooldown, resourceCost, distancePerPassiveTier, speed
    }
}
