//
//  Grim+Extension.swift
//  Fault Build
//
//  Created by Zane on 9/20/20.
//  Copyright © 2020 JusDev Studios. All rights reserved.
//

import Foundation
import UIKit

extension GrimExe: Hero {
    var name: String {
        get {
            return Heroes.grimExe.name
        }
    }
    
    var iconURL: String {
        return "https://api.playfault.com/imagecdn/portraits/17.jpg"
        
    }
    
    var heroIcon: UIImage? {
        get {
            return self.iconImage
        }
        set (image) {
            self.iconImage = image
        }
    }
    
    var bannerName: String {
        return "GrimExe_banner"
        //"https://global-uploads.webflow.com/5d44771a95c1f5121689f944/5f524dee7f1cc44c0c866846_T_GrimDefault_Portrait.jpg"
    }
    
    var eAbilityImageURL: String {
        return "https://api.playfault.com/imagecdn/abilities/GRIMexe/E.png"
    }
    
    var lmbAbilityImageURL: String {
        return "https://api.playfault.com/imagecdn/abilities/GRIMexe/LMB.png"
    }
    
    var pAbilityImageURL: String {
        return "https://api.playfault.com/imagecdn/abilities/GRIMexe/P.png"
    }
    
    var qAbilityImageURL: String {
        return "https://api.playfault.com/imagecdn/abilities/GRIMexe/Q.png"
    }
    
    var rAbilityImageURL: String {
        return "https://api.playfault.com/imagecdn/abilities/GRIMexe/R.png"
    }
    
    var rmbAbilityImageURL: String {
        return "https://api.playfault.com/imagecdn/abilities/GRIMexe/RMB.png"
    }
    
    func getHeroInfo() -> HeroInfo {
        return self.info
    }
    
    func getBaseHealth() -> Double {
        return self.health
    }
    
    func getBaseMana() -> Double {
        return self.mana
    }
    
    func getBasicDefense() -> Double {
        return self.physicalArmor
    }
    
    func getHealthRegen() -> Double {
        return self.healthRegen
    }
    
    func getManaRegen() -> Double {
        return self.manaRegen
    }
    
    func getAbilityDefense() -> Double {
        return Double(self.energyArmor)
    }
    
    func getAbilityDefensePerLevel() -> Double {
        return self.energyArmorPerLevel
    }
    
    func getBasicAttackDamage() -> Double {
        return max(Double(self.lmbAbility.physicalDamage), Double(self.lmbAbility.energyDamage))
    }
    
    func getBasicAttackDamagePerLevel() -> Double {
        return self.lmbAbility.adaptiveDamagePerLevel
    }
    
    func getAttackSpeed() -> Double {
        return 1.0 / self.lmbAbility.cooldown
    }
    
    func getMoveSpeed() -> Double {
        return self.moveSpeed
    }
    
    func getHealthPerLevel() -> Double {
        return self.healthPerLevel
    }
    
    func getHealthRegenPerLevel() -> Double {
        return self.healthRegenPerLevel
    }
    
    func getManaPerLevel() -> Double {
        return self.manaPerLevel
    }
    
    func getManaRegenPerLevel() -> Double {
        return self.manaRegenPerLevel
    }
    
    func getBasicDefensePerLevel() -> Double {
        return self.physicalArmorPerLevel
    }
    
    func getEnergyArmorPerLevel() -> Double {
        return self.energyArmorPerLevel
    }
    
    func getLMBAbility() -> LMBAbility {
        return self.lmbAbility
    }
    
    func getPAbility() -> Ability {
        return self.pAbility
    }
    
    func getQAbility() -> Ability {
        return self.qAbility
    }
    
    func getEAbility() -> Ability {
        return self.eAbility
    }
    
    func getRAbility() -> Ability {
        return self.rAbility
    }
    
    func getRMBAbility() -> Ability {
        return self.rmbAbility
    }
}

extension GrimExePAbility: Ability {
    func getName() -> String {
        return self.name
    }
    
    func getDetails() -> String {
        return self.pDescription
    }
}

extension GrimExeQAbility: Ability {
    func getName() -> String {
        return self.name
    }
    
    func getDetails() -> String {
        var details = ""
        details.append("\(self.qDescription)\n\n")
        details.append("Ion Base Damage: \(self.ionBlastBaseDamage)\n")
        details.append("Electron Base Damage: \(self.electronBlastBaseDamage)\n")
        details.append("Acceleron Base Damage: \(self.acceleronBlastBaseDamage)\n")
        details.append("Knockback Duration: \(self.knockbackDuration)\n")
        details.append("Knockback Speed: \(self.knockbackSpeed)\n")
        details.append("Launch Speed: \(self.launchSpeed)\n")
        details.append("Movement Multiplier: \(self.movementMultiplier)\n")
        details.append("Projectile Radius: \(self.projectileRadius)\n")
        details.append("Recovery TIme: \(self.recoveryTime)\n")
        details.append("Slow: \(self.slow)\n")
        details.append("AM Recovery Time: \(self.aMRecoveryTime)\n")
        details.append("Acceleron Blast Damage: \(self.acceleronBlastBaseDamage)\n")
        details.append("Acceleron Blast Cooldown: \(self.acceleronBlastCooldown)\n")
        details.append("Acceleron Blast Energy Cost: \(self.acceleronBlastEnergyCost)\n")
        details.append("Acceleron Blast Energy Scaling: \(self.acceleronBlastEnergyPowerScalingFactor)\n")
        details.append("Acceleron Blast Max Blast Range: \(self.acceleronBlastMaxRange)\n")
        details.append("Acceleron Blast Physical Scaling: \(self.acceleronBlastPhysicalPowerScalingFactor)\n")
        details.append("Acceleron Blast Slow Duration: \(self.acceleronBlastSlowDuration)\n")
        details.append("Acceleron Mode Projectile Radius: \(self.acceleronModeProjectileRadius)\n")
        details.append("EM Cast Time: \(self.eMCastTime)\n")
        details.append("EM Recovery Time: \(self.eMRecoveryTime)\n")
        details.append("Electron Blast Cooldown: \(self.electronBlastCooldown)\n")
        details.append("Electron Energy Armor Shred: \(self.electronBlastEnergyArmourShred)\n")
        details.append("Electron Energy Armor Shred Duration: \(self.electronBlastEnergyArmourShredDuration)\n")
        details.append("Electron Blast Energy Cost: \(self.electronBlastEnergyCost)\n")
        details.append("Electron Blast Energy Power Scaling: \(self.electronBlastEnergyPowerScalingFactor)\n")
        details.append("Electron Blast Launch Speed: \(self.electronBlastLaunchSpeed)\n")
        details.append("Electron Blast Max Range: \(self.electronBlastMaxRange)\n")
        details.append("Electron Blast Phys. Power Scaling: \(self.electronBlastPhysicalPowerScalingFactor)\n")
        details.append("Ion Blast Base Damage: \(self.ionBlastBaseDamage)\n")
        details.append("Ion Blast Cooldown: \(self.ionBlastCooldown)\n")
        details.append("Ion Blast Energy Cost: \(self.ionBlastEnergyCost)\n")
        details.append("Ion Blast Energy Power Scaling: \(self.ionBlastEnergyPowerScalingFactor)\n")
        details.append("Ion Blast Phys. Power Scaling : \(self.ionBlastPhysicalPowerScalingFactor)\n")
        details.append("Ion Launch Speed: \(self.ionLaunchSpeed)\n")
        details.append("Ion Mode Proectile Radius: \(self.ionModeProjectileRadius)")
        
        
        return details
    }
}

extension GrimExeEAbility: Ability {
    func getName() -> String {
        return self.name
    }
    
    func getDetails() -> String {
        var details = ""
        details.append("\(self.eDescription)\n\n")
        details.append("Cooldown: \(self.cooldown)\n")
        details.append("Atk Speed per Basic: \(self.attackSpeedPerBasic)\n")
        details.append("Bonus Basic Attack Range: \(self.bonusBasicAttackRange)\n")
        details.append("Atack Speed Duration: \(self.attackSpeedDuration)\n")
        details.append("Surge Detonation Energy Gain: \(self.energyGainedFromSurgeDetonation)\n")
        details.append("Ion Basic Energy Gain: \(self.energyGainedOnIonBasic)\n")
        details.append("Acceleron Basic Energy Cost: \(self.energyPerAcceleronBasic)\n")
        details.append("Electron Basic Energy Cost: \(self.energyPerElectronBasic)\n")
        details.append("Slow: \(self.maxStacks)")
        return details
    }
}

extension GrimExeRAbility: Ability {
    func getName() -> String {
        return self.name
    }
    
    func getDetails() -> String {
        var details = ""
        details.append("\(self.rDescription)\n\n")
        details.append("Base Damage: \(self.baseDamage)\n")
        details.append("Cooldown: \(self.cooldown)\n")
        details.append("Cast Time: \(self.castTime)\n")
        details.append("Range: \(self.range)\n")
        details.append("Projectile Travel Speed: \(self.projectileTravelSpeed)\n")
        details.append("Recovery Time: \(self.recoveryTime)\n")
        details.append("Energy Power Scaling: \(self.energyPowerScaling)")
        return details
    }
}

extension GrimExeRMBAbility: Ability {
    func getName() -> String {
        return self.name
    }
    
    func getDetails() -> String {
        var details = ""
        details.append("\(self.rmbDescription)\n\n")
        details.append("Cooldown: \(self.cooldown)\n")
        details.append("BLAST.EXE Cooldown: \(self.blastexeActiveCDR)\n")
        details.append("Energy Back: \(self.energyBack)\n")
        details.append("Energy Cost: \(self.energyCost)")
        return details
    }
}

