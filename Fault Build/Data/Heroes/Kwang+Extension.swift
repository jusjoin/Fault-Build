//
//  Kwang+Extension.swift
//  Fault Build
//
//  Created by Zane on 9/20/20.
//  Copyright © 2020 JusDev Studios. All rights reserved.
//

import Foundation
import UIKit

extension Kwang: Hero {
    var name: String {
        get {
            return Heroes.kwang.name
        }
    }
    
    var iconURL: String {
        return "https://api.playfault.com/imagecdn/portraits/4.jpg"
        
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
        return "Kwang_banner"
        //"https://global-uploads.webflow.com/5d44771a95c1f5121689f944/5eb614cffb1f1e41cab0518f_T_KwangDefault_Portrait.jpg"
    }
    
    var eAbilityImageURL: String {
        return "https://api.playfault.com/imagecdn/abilities/Kwang/E.png"
    }
    
    var lmbAbilityImageURL: String {
        return "https://api.playfault.com/imagecdn/abilities/Kwang/LMB.png"
    }
    
    var pAbilityImageURL: String {
        return "https://api.playfault.com/imagecdn/abilities/Kwang/P.png"
    }
    
    var qAbilityImageURL: String {
        return "https://api.playfault.com/imagecdn/abilities/Kwang/Q.png"
    }
    
    var rAbilityImageURL: String {
        return "https://api.playfault.com/imagecdn/abilities/Kwang/R.png"
    }
    
    var rmbAbilityImageURL: String {
        return "https://api.playfault.com/imagecdn/abilities/Kwang/RMB.png"
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

extension KwangPAbility: Ability {
    func getName() -> String {
        return self.name
    }
    
    func getDetails() -> String {
        return self.pDescription
    }
}

extension KwangQAbility: Ability {
    func getName() -> String {
        return self.name
    }
    
    func getDetails() -> String {
        var details = ""
        details.append("\(self.qDescription)\n\n")
        details.append("Base Damage: \(self.baseDamage)\n")
        details.append("Resource Cost: \(self.resourceCost)\n")
        details.append("Cast Time: \(self.casttime)\n")
        details.append("Cooldown: \(self.cooldown)\n")
        details.append("Duration: \(self.duration)\n")
        details.append("Effect Delay: \(self.effectDelay)\n")
        details.append("Height: \(self.height)\n")
        details.append("Radius: \(self.radius)\n")
        details.append("Range: \(self.range)\n")
        details.append("Recovery Time: \(self.recoveryTime)\n")
        details.append("Scaling Factor: \(self.scalingFactor)")
        return details
    }
}

extension KwangEAbility: Ability {
    func getName() -> String {
        return self.name
    }
    
    func getDetails() -> String {
        var details = ""
        details.append("\(self.eDescription)\n\n")
        details.append("Base Damage: \(self.baseDamage)\n")
        details.append("Resource Cost: \(self.resourceCost)\n")
        details.append("Cooldown: \(self.cooldown)\n")
        details.append("Cast Time: \(self.castTime)\n")
        details.append("Energy Armor Shred: \(self.enArShred)\n")
        details.append("Shred Duration: \(self.shredDuration)\n")
        details.append("Movement Penalty: \(self.movementPenalty)\n")
        details.append("Sword Range: \(self.swordRange)\n")
        details.append("Without Sword Range: \(self.withoutSwRange)\n")
        details.append("Width: \(self.width)\n")
        details.append("Recovery Time: \(self.recoveryTime)\n")
        details.append("Scaling Factor: \(self.scalingFactor)")
        return details
    }
}

extension KwangRAbility: Ability {
    func getName() -> String {
        return self.name
    }
    
    func getDetails() -> String {
        var details = ""
        details.append("\(self.rDescription)\n\n")
        details.append("Base Damage: \(self.baseDamage)\n")
        details.append("Resource Cost: \(self.resourceCost)\n")
        details.append("Cooldown: \(self.cooldown)\n")
        details.append("Cast Time: \(self.castTime)\n")
        details.append("P Scaling Factor: \(self.pScalingFactor)\n")
        details.append("Radius: \(self.radius)\n")
        details.append("Recovery Time: \(self.recoveryTime)\n")
        details.append("Slow: \(self.slow)\n")
        details.append("Slow Duration: \(self.slowDuration)\n")
        details.append("Recovery Time: \(self.recoveryTime)\n")
        details.append("Z Scaling Factor: \(self.zScalingFactor)")
        return details
    }
}

extension KwangRMBAbility: Ability {
    func getName() -> String {
        return self.name
    }
    
    func getDetails() -> String {
        var details = ""
        details.append("\(self.rmbDescription)\n\n")
        details.append("Lightning Radius: \(self.lightningDamage)\n")
        details.append("Shield Damage: \(self.shieldDamage)\n")
        details.append("Resource Cost: \(self.resourceCost)\n")
        details.append("Cooldown: \(self.cooldown)\n")
        details.append("Cast Time: \(self.castTime)\n")
        details.append("AOE Radius: \(self.aOERadius)\n")
        details.append("Height: \(self.height)\n")
        details.append("Sh Damage Radius: \(self.shDmgRadius)\n")
        details.append("BHP Scaling Factor: \(self.bHPScalingFactor)\n")
        details.append("Shield Amount: \(self.shieldAmount)\n")
        details.append("Shield Duration: \(self.shieldDuration)\n")
        details.append("Light SC Factor: \(self.lightScFact)\n")
        details.append("Recovery TIme: \(self.recoveryTime)\n")
        details.append("Shield Scaling Factor: \(self.shieldScalingFactor)")
        return details
    }
}

