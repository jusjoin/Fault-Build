//
//  HeroData.swift
//  Fault Build
//
//  Created by Zane on 8/16/20.
//  Copyright © 2020 JusDev Studios. All rights reserved.
//

import Foundation

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let hero = try? JSONDecoder().decode(HeroData.self, from: jsonData)

import Foundation

// MARK: - HeroData
struct HeroData: Codable {
    let info: Info
    let health, healthPerLevel: Int
    let healthRegen, healthRegenPerLevel: Double
    let mana, manaPerLevel: Int
    let manaRegen, manaRegenPerLevel: Double
    let physicalArmor: Int
    let physicalArmorPerLevel, energyArmor, energyArmorPerLevel: Double
    let movespeed: Int
    let lmb: Lmb
    let rmb: E
    let q: Q
    let e: E
    let r: R
    let p: P
}

// MARK: - E
struct E: Codable {
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

// MARK: - Info
struct Info: Codable {
    let basicRange, niche, role, damageType: String
    let infoDescription: String

    enum CodingKeys: String, CodingKey {
        case basicRange, niche, role, damageType
        case infoDescription = "description"
    }
}

// MARK: - Lmb
struct Lmb: Codable {
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

// MARK: - P
struct P: Codable {
    let name, pDescription, readyMovementMultiplier, baseDamage: String
    let scalingFactor: String

    enum CodingKeys: String, CodingKey {
        case name
        case pDescription = "description"
        case readyMovementMultiplier, baseDamage, scalingFactor
    }
}

// MARK: - Q
struct Q: Codable {
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

// MARK: - R
struct R: Codable {
    let name, rDescription, readyMovementMultiplier, range: String
    let cooldown, resourceCost, castTime, baseDamage: String
    let scalingFactor, recoveryTime, missingManaPCT, missingManaPCTMax: String

    enum CodingKeys: String, CodingKey {
        case name
        case rDescription = "description"
        case readyMovementMultiplier, range, cooldown, resourceCost, castTime, baseDamage, scalingFactor, recoveryTime, missingManaPCT, missingManaPCTMax
    }
}
