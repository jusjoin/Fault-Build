//
//  Khaimera+Extension.swift
//  Fault Build
//
//  Created by Zane on 9/20/20.
//  Copyright © 2020 JusDev Studios. All rights reserved.
//

import Foundation
import UIKit

extension Khaimera: Hero {
    var name: String {
        get {
            return Heroes.khaimera.name
        }
    }
    
    var iconURL: String {
        return "https://api.playfault.com/imagecdn/portraits/6.jpg"
        
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
        return "Khaimera_banner"
        //"https://global-uploads.webflow.com/5d44771a95c1f5121689f944/5eb614cfa119284edbfbd11d_T_KhaimeraDefault_Portrait.jpg"
    }
    
    var eAbilityImageURL: String {
        return "https://api.playfault.com/imagecdn/abilities/Khaimera/E.png"
    }
    
    var lmbAbilityImageURL: String {
        return "https://api.playfault.com/imagecdn/abilities/Khaimera/LMB.png"
    }
    
    var pAbilityImageURL: String {
        return "https://api.playfault.com/imagecdn/abilities/Khaimera/P.png"
    }
    
    var qAbilityImageURL: String {
        return "https://api.playfault.com/imagecdn/abilities/Khaimera/Q.png"
    }
    
    var rAbilityImageURL: String {
        return "https://api.playfault.com/imagecdn/abilities/Khaimera/R.png"
    }
    
    var rmbAbilityImageURL: String {
        return "https://api.playfault.com/imagecdn/abilities/Khaimera/RMB.png"
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

extension KhaimeraPAbility: Ability {
    func getName() -> String {
        return self.name
    }
    
    func getDetails() -> String {
        return self.pDescription
    }
}

extension KhaimeraQAbility: Ability {
    func getName() -> String {
        return self.name
    }
    
    func getDetails() -> String {
        var details = ""
        details.append("\(self.qDescription)\n\n")
        details.append("Minion Damage Reduction: \(self.resourceCost)\n")
        details.append("Cooldown: \(self.cooldown)\n")
        details.append("Cast Time: \(self.castTime)\n")
        details.append("Base Damage: \(self.maxDuration)\n")
        details.append("Max Bounce Range: \(self.maxNumberAttacks)\n")
        details.append("Resource Cost: \(self.bAScalingFactor)")
        return details
    }
}

extension KhaimeraEAbility: Ability {
    func getName() -> String {
        return self.name
    }
    
    func getDetails() -> String {
        var details = ""
        details.append("\(self.eDescription)\n\n")
        details.append("Resource Cost: \(self.resourceCost)\n")
        details.append("Cooldown: \(self.cooldown)\n")
        details.append("Cast Time: \(self.castTime)\n")
        details.append("BBBAD Duration: \(self.bBBADDuration)\n")
        details.append("Max Lifetime: \(self.bonusBaseBAD)\n")
        details.append("Cast Animation Time 1: \(self.castAnimationTime1)\n")
        details.append("Cast Animation Time 2: \(self.castAnimationTime2)\n")
        details.append("Case Movement Multiplier: \(self.castMovementMultiplier)\n")
        details.append("Grant Stacks Effect Delay: \(self.grantStacksEffectDelay)\n")
        details.append("Passive Stacks: \(self.passiveStacks)\n")
        details.append("Ready Movement Multiplier: \(self.readyMovementMultiplier)")
        return details
    }
}

extension KhaimeraRAbility: Ability {
    func getName() -> String {
        return self.name
    }
    
    func getDetails() -> String {
        var details = ""
        details.append("\(self.rDescription)\n\n")
        details.append("Base Damage: \(self.baseDamage)\n")
        details.append("Resource Cost: \(self.resourceCost)\n")
        details.append("Cooldown: \(self.cooldown)\n")
        details.append("Channel Duration: \(self.channelDuration)\n")
        details.append("Effect 2 Delay: \(self.effect2Delay)\n")
        details.append("Knockback Speed: \(self.knockbackSpeed)\n")
        details.append("Passive Stacks: \(self.passiveStacks)\n")
        details.append("Range: \(self.range)\n")
        details.append("Radius: \(self.radius)\n")
        details.append("Suppression: \(self.supression)\n")
        details.append("Scaling Factor: \(self.scalingFactor)")
        return details
    }
}

extension KhaimeraRMBAbility: Ability {
    func getName() -> String {
        return self.name
    }
    
    func getDetails() -> String {
        var details = ""
        details.append("\(self.rmbDescription)\n\n")
        details.append("Base Damage: \(self.baseDamage)\n")
        details.append("Resource Cost: \(self.resourceCost)\n")
        details.append("Cooldown: \(self.cooldown)\n")
        details.append("Additional Stacks: \(self.additionalStacks)\n")
        details.append("Duration: \(self.duration)\n")
        details.append("Effect Delay: \(self.effectDelay)\n")
        details.append("Range: \(self.range)\n")
        details.append("Slow: \(self.slow)\n")
        details.append("Scaling Factor: \(self.scalingFactor)")
        return details
    }
}

