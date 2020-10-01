//
//  Murdock.swift
//  Fault Build
//
//  Created by Zane on 9/20/20.
//  Copyright © 2020 JusDev Studios. All rights reserved.
//

//   let heroData = try? newJSONDecoder().decode(HeroData.self, from: jsonData)

import Foundation
import UIKit

// MARK: - HeroData
class Murdock: Codable {
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
    let rmbAbility: MurdockRMBAbility
    let qAbility: MurdockQAbility
    let eAbility: MurdockEAbility
    let rAbility: MurdockRAbility
    let pAbility: MurdockPAbility
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
class MurdockEAbility: Codable {
    let name, eDescription, castTime, range: String
    let radius, cooldown, resourceCost, effectDelay: String
    let lifetime, maxTrapsDeployed, baseDamage, scalingFactor: String
    let slow, slowDuration, stunDuration: String

    enum CodingKeys: String, CodingKey {
        case name
        case eDescription = "description"
        case castTime, range, radius, cooldown, resourceCost, effectDelay, lifetime, maxTrapsDeployed, baseDamage, scalingFactor, slow, slowDuration, stunDuration
    }
}

// MARK: - P
class MurdockPAbility: Codable {
    let name, pDescription, triggerRadius, triggerHealth: String
    let movementSpeed: String

    enum CodingKeys: String, CodingKey {
        case name
        case pDescription = "description"
        case triggerRadius
        case triggerHealth = "triggerHealth%"
        case movementSpeed
    }
}

// MARK: - Q
class MurdockQAbility: Codable {
    let name, qDescription, cooldown, resourceCost: String
    let castTime, range, angle, baseDamage: String
    let scalingFactor, physArmPCTRed, reductionDuration: String

    enum CodingKeys: String, CodingKey {
        case name
        case qDescription = "description"
        case cooldown, resourceCost, castTime, range, angle, baseDamage, scalingFactor, physArmPCTRed, reductionDuration
    }
}

// MARK: - R
class MurdockRAbility: Codable {
    let name, rDescription, readyTime, cooldown: String
    let resourceCost, castTime, baseDamage, scalingFactor: String
    let recoveryTime: String

    enum CodingKeys: String, CodingKey {
        case name
        case rDescription = "description"
        case readyTime, cooldown, resourceCost, castTime, baseDamage, scalingFactor, recoveryTime
    }
}

// MARK: - Rmb
class MurdockRMBAbility: Codable {
    let name, rmbDescription, width, length: String
    let cooldown, resourceCost, speed, duration: String

    enum CodingKeys: String, CodingKey {
        case name
        case rmbDescription = "description"
        case width, length, cooldown, resourceCost, speed, duration
    }
}
