//
//  Grim.swift
//  Fault Build
//
//  Created by Zane on 9/20/20.
//  Copyright © 2020 JusDev Studios. All rights reserved.
//

import Foundation
import UIKit

// MARK: - HeroData
class GrimExe: Codable {
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
    let rmbAbility: GrimExeRMBAbility
    let qAbility: GrimExeQAbility
    let eAbility: GrimExeEAbility
    let rAbility: GrimExeRAbility
    let pAbility: GrimExePAbility
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
class GrimExeEAbility: Codable {
    let name, eDescription, cooldown, energyGainedOnIonBasic: String
    let energyGainedFromSurgeDetonation, attackSpeedPerBasic, attackSpeedDuration, maxStacks: String
    let energyPerAcceleronBasic, bonusBasicAttackRange, energyPerElectronBasic: String

    enum CodingKeys: String, CodingKey {
        case name
        case eDescription = "description"
        case cooldown, energyGainedOnIonBasic, energyGainedFromSurgeDetonation, attackSpeedPerBasic, attackSpeedDuration, maxStacks, energyPerAcceleronBasic, bonusBasicAttackRange, energyPerElectronBasic
    }
}

// MARK: - P
class GrimExePAbility: Codable {
    let name, pDescription, maxSurgeStacks, onHitEnergyPowerScaling: String
    let stackDuration, detonationEnergyPowerScaling, energyRegen, energyGain: String

    enum CodingKeys: String, CodingKey {
        case name
        case pDescription = "description"
        case maxSurgeStacks, onHitEnergyPowerScaling, stackDuration, detonationEnergyPowerScaling, energyRegen, energyGain
    }
}

// MARK: - Q
class GrimExeQAbility: Codable {
    let name, qDescription, recoveryTime, ionBlastCooldown: String
    let ionBlastEnergyCost, ionModeProjectileRadius, ionLaunchSpeed, ionBlastRadius: String
    let ionBlastBaseDamage, ionBlastEnergyPowerScalingFactor, ionBlastPhysicalPowerScalingFactor, knockbackDuration: String
    let knockbackSpeed, aMRecoveryTime, acceleronBlastCooldown, acceleronBlastEnergyCost: String
    let acceleronModeProjectileRadius, launchSpeed, acceleronBlastMaxRange, acceleronBlastBaseDamage: String
    let acceleronBlastEnergyPowerScalingFactor, acceleronBlastPhysicalPowerScalingFactor, slow, acceleronBlastSlowDuration: String
    let eMCastTime, eMRecoveryTime, electronBlastCooldown, electronBlastEnergyCost: String
    let movementMultiplier, projectileRadius, electronBlastLaunchSpeed, electronBlastMaxRange: String
    let electronBlastBaseDamage, electronBlastEnergyPowerScalingFactor, electronBlastPhysicalPowerScalingFactor, electronBlastEnergyArmourShred: String
    let electronBlastEnergyArmourShredDuration: String

    enum CodingKeys: String, CodingKey {
        case name
        case qDescription = "description"
        case recoveryTime, ionBlastCooldown, ionBlastEnergyCost, ionModeProjectileRadius, ionLaunchSpeed, ionBlastRadius, ionBlastBaseDamage, ionBlastEnergyPowerScalingFactor, ionBlastPhysicalPowerScalingFactor, knockbackDuration, knockbackSpeed, aMRecoveryTime, acceleronBlastCooldown, acceleronBlastEnergyCost, acceleronModeProjectileRadius, launchSpeed, acceleronBlastMaxRange, acceleronBlastBaseDamage, acceleronBlastEnergyPowerScalingFactor, acceleronBlastPhysicalPowerScalingFactor, slow, acceleronBlastSlowDuration, eMCastTime, eMRecoveryTime, electronBlastCooldown, electronBlastEnergyCost, movementMultiplier, projectileRadius, electronBlastLaunchSpeed, electronBlastMaxRange, electronBlastBaseDamage, electronBlastEnergyPowerScalingFactor, electronBlastPhysicalPowerScalingFactor, electronBlastEnergyArmourShred, electronBlastEnergyArmourShredDuration
    }
}

// MARK: - R
class GrimExeRAbility: Codable {
    let name, rDescription, range, cooldown: String
    let castTime, projectileTravelSpeed, baseDamage, energyPowerScaling: String
    let recoveryTime: String

    enum CodingKeys: String, CodingKey {
        case name
        case rDescription = "description"
        case range, cooldown, castTime, projectileTravelSpeed, baseDamage, energyPowerScaling, recoveryTime
    }
}

// MARK: - Rmb
class GrimExeRMBAbility: Codable {
    let name, rmbDescription, cooldown, energyCost: String
    let energyBack, duration, blastexeActiveCDR: String

    enum CodingKeys: String, CodingKey {
        case name
        case rmbDescription = "description"
        case cooldown, energyCost, energyBack, duration, blastexeActiveCDR
    }
}

