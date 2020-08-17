//
//  Belica.swift
//  Fault Build
//
//  Created by Zane on 8/16/20.
//  Copyright © 2020 JusDev Studios. All rights reserved.
//

import Foundation

// MARK: - Belica
class Belica {
    let info: BelicaInfo
    let health, healthPerLevel: Int
    let healthRegen, healthRegenPerLevel: Double
    let mana, manaPerLevel: Int
    let manaRegen, manaRegenPerLevel: Double
    let physicalArmor: Int
    let physicalArmorPerLevel, energyArmor, energyArmorPerLevel: Double
    let moveSpeed: Int
    let lmbAbility: BelicaLMBAbility
    let rmbAbility: BelicaEAbility
    let qAbility: BelicaQAbility
    let eAbility: BelicaEAbility
    let rAbility: BelicaRAbility
    let pAbility: BelicaPAbility
    
    init(info: BelicaInfo, health: Int, healthPerLevel: Int, healthRegen: Double, healthRegenPerLevel: Double, mana: Int, manaPerLevel: Int,
         manaRegen: Double, manaRegenPerLevel: Double, physicalArmor: Int, physicalArmorPerLevel: Double, energyArmor: Double, energyArmorPerLevel: Double,
         moveSpeed: Int, lmbAbility: BelicaLMBAbility, rmbAbility: BelicaEAbility, qAbility:BelicaQAbility, eAbility:BelicaEAbility, rAbility:BelicaRAbility,
         pAbility: BelicaPAbility){
        self.info = info
        self.health = health
        self.healthPerLevel = healthPerLevel
        self.healthRegen = healthRegen
        self.healthRegenPerLevel = healthRegenPerLevel
        self.mana = mana
        self.manaPerLevel = manaPerLevel
        self.manaRegen = manaRegen
        self.manaRegenPerLevel = manaRegenPerLevel
        self.physicalArmor = physicalArmor
        self.physicalArmorPerLevel = physicalArmorPerLevel
        self.energyArmor = energyArmor
        self.energyArmorPerLevel = energyArmorPerLevel
        self.moveSpeed = moveSpeed
        self.lmbAbility = lmbAbility
        self.rmbAbility = rmbAbility
        self.qAbility = qAbility
        self.eAbility = eAbility
        self.rAbility = rAbility
        self.pAbility = pAbility
    }
    
    init(belicaData: BelicaData){
        self.info = BelicaInfo(belicaInfoData: belicaData.info)
        self.health = belicaData.health
        self.healthPerLevel = belicaData.healthPerLevel
        self.healthRegen = belicaData.healthRegen
        self.healthRegenPerLevel = belicaData.healthRegenPerLevel
        self.mana = belicaData.mana
        self.manaPerLevel = belicaData.manaPerLevel
        self.manaRegen = belicaData.manaRegen
        self.manaRegenPerLevel = belicaData.manaRegenPerLevel
        self.physicalArmor = belicaData.physicalArmor
        self.physicalArmorPerLevel = belicaData.physicalArmorPerLevel
        self.energyArmor = belicaData.energyArmor
        self.energyArmorPerLevel = belicaData.energyArmorPerLevel
        self.moveSpeed = belicaData.moveSpeed
        self.lmbAbility = BelicaLMBAbility(belicaLMBAbilityData: belicaData.lmbAbility)
        self.rmbAbility = BelicaEAbility(belicaEAbilityData: belicaData.rmbAbility)
        self.qAbility = BelicaQAbility(belicaQAbilityData: belicaData.qAbility)
        self.eAbility = BelicaEAbility(belicaEAbilityData: belicaData.eAbility)
        self.rAbility = BelicaRAbility(belicaRAbilityData: belicaData.rAbility)
        self.pAbility = BelicaPAbility(belicaPAbilityData: belicaData.pAbility)
    }
}

// MARK: - BelicaEAbility
class BelicaEAbility: Codable {
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
    
    init(name: String, eDescription: String, xLevel: String?, range: String, radius: String, cooldown: String, resourceCost: String, lifetime: String?, baseDamage: String, scalingFactor: String, delay: String?, manaperunithit: String?) {
        self.name = name
        self.eDescription = eDescription
        self.xLevel = xLevel
        self.range = range
        self.radius = radius
        self.cooldown = cooldown
        self.resourceCost = resourceCost
        self.lifetime = lifetime
        self.baseDamage = baseDamage
        self.scalingFactor = scalingFactor
        self.delay = delay
        self.manaperunithit = manaperunithit
    }
    
    init(belicaEAbilityData: BelicaEAbilityData) {
        self.name = belicaEAbilityData.name
        self.eDescription = belicaEAbilityData.eDescription
        self.xLevel = belicaEAbilityData.xLevel
        self.range = belicaEAbilityData.range
        self.radius = belicaEAbilityData.radius
        self.cooldown = belicaEAbilityData.cooldown
        self.resourceCost = belicaEAbilityData.resourceCost
        self.lifetime = belicaEAbilityData.lifetime
        self.baseDamage = belicaEAbilityData.baseDamage
        self.scalingFactor = belicaEAbilityData.scalingFactor
        self.delay = belicaEAbilityData.delay
        self.manaperunithit = belicaEAbilityData.manaperunithit
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
    
    init(basicRange: String, niche: String, role: String, damageType: String, infoDescription: String) {
        self.basicRange = basicRange
        self.niche = niche
        self.role = role
        self.damageType = damageType
        self.infoDescription = infoDescription
    }
    
    init(belicaInfoData: BelicaInfoData) {
        self.basicRange = belicaInfoData.basicRange
        self.niche = belicaInfoData.niche
        self.role = belicaInfoData.role
        self.damageType = belicaInfoData.damageType
        self.infoDescription = belicaInfoData.infoDescription
    }
}

// MARK: - BelicaLMBAbility
class BelicaLMBAbility: Codable {
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
    
    init(name: String, lmbDescription: String, cooldown: Double, range: Int, physicalDamage: Int, energyDamage: Int, attackSpeedPerLevel: Int, adaptiveDamagePerLevel: Double, scalingFactor: String) {
        self.name = name
        self.lmbDescription = lmbDescription
        self.cooldown = cooldown
        self.range = range
        self.physicalDamage = physicalDamage
        self.energyDamage = energyDamage
        self.attackSpeedPerLevel = attackSpeedPerLevel
        self.adaptiveDamagePerLevel = adaptiveDamagePerLevel
        self.scalingFactor = scalingFactor
    }
    
    init(belicaLMBAbilityData: BelicaLMBAbilityData) {
        self.name = belicaLMBAbilityData.name
        self.lmbDescription = belicaLMBAbilityData.lmbDescription
        self.cooldown = belicaLMBAbilityData.cooldown
        self.range = belicaLMBAbilityData.range
        self.physicalDamage = belicaLMBAbilityData.physicalDamage
        self.energyDamage = belicaLMBAbilityData.energyDamage
        self.attackSpeedPerLevel = belicaLMBAbilityData.attackSpeedPerLevel
        self.adaptiveDamagePerLevel = belicaLMBAbilityData.adaptiveDamagePerLevel
        self.scalingFactor = belicaLMBAbilityData.scalingFactor
    }
}

// MARK: - BelicaPAbility
class BelicaPAbility: Codable {
    let name, pDescription, readyMovementMultiplier, baseDamage: String
    let scalingFactor: String

    enum CodingKeys: String, CodingKey {
        case name
        case pDescription = "description"
        case readyMovementMultiplier, baseDamage, scalingFactor
    }
    
    init(name: String, pDescription: String, readyMovementMultiplier: String, baseDamage: String, scalingFactor: String) {
        self.name = name
        self.pDescription = pDescription
        self.readyMovementMultiplier = readyMovementMultiplier
        self.baseDamage = baseDamage
        self.scalingFactor = scalingFactor
    }
    
    init(belicaPAbilityData: BelicaPAbilityData) {
        self.name = belicaPAbilityData.name
        self.pDescription = belicaPAbilityData.pDescription
        self.readyMovementMultiplier = belicaPAbilityData.readyMovementMultiplier
        self.baseDamage = belicaPAbilityData.baseDamage
        self.scalingFactor = belicaPAbilityData.scalingFactor
    }
}

// MARK: - BelicaQAbility
class BelicaQAbility: Codable {
    let name, qDescription, level, cooldown: String
    let resourceCost, castTime, range, width: String
    let speed, height, launchspeed, baseDamage: String
    let scalingFactor, duration: String

    enum CodingKeys: String, CodingKey {
        case name
        case qDescription = "description"
        case level, cooldown, resourceCost, castTime, range, width, speed, height, launchspeed, baseDamage, scalingFactor, duration
    }
    
    init(name: String, qDescription: String, level: String, cooldown: String, resourceCost: String, castTime: String, range: String, width: String, speed: String, height: String, launchspeed: String, baseDamage: String, scalingFactor: String, duration: String) {
        self.name = name
        self.qDescription = qDescription
        self.level = level
        self.cooldown = cooldown
        self.resourceCost = resourceCost
        self.castTime = castTime
        self.range = range
        self.width = width
        self.speed = speed
        self.height = height
        self.launchspeed = launchspeed
        self.baseDamage = baseDamage
        self.scalingFactor = scalingFactor
        self.duration = duration
    }
    
    init(belicaQAbilityData: BelicaQAbilityData) {
        self.name = belicaQAbilityData.name
        self.qDescription = belicaQAbilityData.qDescription
        self.level = belicaQAbilityData.level
        self.cooldown = belicaQAbilityData.cooldown
        self.resourceCost = belicaQAbilityData.resourceCost
        self.castTime = belicaQAbilityData.castTime
        self.range = belicaQAbilityData.range
        self.width = belicaQAbilityData.width
        self.speed = belicaQAbilityData.speed
        self.height = belicaQAbilityData.height
        self.launchspeed = belicaQAbilityData.launchspeed
        self.baseDamage = belicaQAbilityData.baseDamage
        self.scalingFactor = belicaQAbilityData.scalingFactor
        self.duration = belicaQAbilityData.duration
    }
}

// MARK: - BelicaRAbility
class BelicaRAbility: Codable {
    let name, rDescription, readyMovementMultiplier, range: String
    let cooldown, resourceCost, castTime, baseDamage: String
    let scalingFactor, recoveryTime, missingManaPCT, missingManaPCTMax: String

    enum CodingKeys: String, CodingKey {
        case name
        case rDescription = "description"
        case readyMovementMultiplier, range, cooldown, resourceCost, castTime, baseDamage, scalingFactor, recoveryTime, missingManaPCT, missingManaPCTMax
    }
    
    init(name: String, rDescription: String, readyMovementMultiplier: String, range: String, cooldown: String, resourceCost: String, castTime: String, baseDamage: String, scalingFactor: String, recoveryTime: String, missingManaPCT: String, missingManaPCTMax: String) {
        self.name = name
        self.rDescription = rDescription
        self.readyMovementMultiplier = readyMovementMultiplier
        self.range = range
        self.cooldown = cooldown
        self.resourceCost = resourceCost
        self.castTime = castTime
        self.baseDamage = baseDamage
        self.scalingFactor = scalingFactor
        self.recoveryTime = recoveryTime
        self.missingManaPCT = missingManaPCT
        self.missingManaPCTMax = missingManaPCTMax
    }
    
    init(belicaRAbilityData: BelicaRAbilityData) {
        self.name = belicaRAbilityData.name
        self.rDescription = belicaRAbilityData.rDescription
        self.readyMovementMultiplier = belicaRAbilityData.readyMovementMultiplier
        self.range = belicaRAbilityData.range
        self.cooldown = belicaRAbilityData.cooldown
        self.resourceCost = belicaRAbilityData.resourceCost
        self.castTime = belicaRAbilityData.castTime
        self.baseDamage = belicaRAbilityData.baseDamage
        self.scalingFactor = belicaRAbilityData.scalingFactor
        self.recoveryTime = belicaRAbilityData.recoveryTime
        self.missingManaPCT = belicaRAbilityData.missingManaPCT
        self.missingManaPCTMax = belicaRAbilityData.missingManaPCTMax
    }
}

