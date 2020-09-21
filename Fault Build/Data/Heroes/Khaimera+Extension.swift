//
//  Khaimera+Extension.swift
//  Fault Build
//
//  Created by Zane on 9/20/20.
//  Copyright © 2020 JusDev Studios. All rights reserved.
//

import Foundation

extension Khaimera: Hero {
    var name: String {
        get {
            return Heroes.khaimera.name
        }
    }
    
    var iconURL: String {
        return "https://api.playfault.com/imagecdn/portraits/6.jpg"
        
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
//        details.append("Resource Cost: \(self.resourceCost)\n")
//        details.append("Cooldown: \(self.cooldown)\n")
//        details.append("Base Damage: \(self.baseDamage)\n")
//        details.append("Cast Time: \(self.castTime)\n")
//        details.append("Max Bounce Range: \(self.maxBounceRange)\n")
//        details.append("Minion Damage Reduction: \(self.minionDamageReduction)\n")
//        details.append("Radius: \(self.radius)\n")
//        details.append("Ready Movement Multiplier: \(self.readyMovementMultiplier)\n")
//        details.append("Recovery Time: \(self.recoveryTime)\n")
//        details.append("Slow Duration: \(self.slowDuration)\n")
//        details.append("Stun Duration: \(self.stunDuration)\n")
//        details.append("Speed: \(self.speed)\n")
//        details.append("Scaling Factor: \(self.scalingFactor)\n")
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
//        details.append("Resource Cost: \(self.resourceCost)\n")
//        details.append("Cooldown: \(self.cooldown)\n")
//        details.append("Base Damage: \(self.baseDamage)\n")
//        details.append("Cast Time: \(self.castTime)\n")
//        details.append("Max Lifetime: \(self.maxLifetime)\n")
//        details.append("PCT Start Charge Dmg: \(self.pCTStartChargeDmg)\n")
//        details.append("Radius: \(self.radius)\n")
//        details.append("Ready Movement Multiplier: \(self.readyMovementMultiplier)\n")
//        details.append("Recovery Time: \(self.recoveryTime)\n")
//        details.append("Slow: \(self.slow)\n")
//        details.append("Slow Duration: \(self.slowDuration)\n")
//        details.append("Scaling Factor: \(self.scalingFactor)\n")
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
//        details.append("Resource Cost: \(self.resourceCost)\n")
//        details.append("Cooldown: \(self.cooldown)\n")
//        details.append("Cast Time: \(self.castTime)\n")
//        details.append("Max Lifetime: \(self.maxLifetime)\n")
//        details.append("Effect Delay: \(self.effectDelay)\n")
//        details.append("Fence Height: \(self.fenceHeight)\n")
//        details.append("Radius: \(self.radius)\n")
//        details.append("Ready Movement Multiplier: \(self.readyMovementMultiplier)\n")
//        details.append("Recovery Time: \(self.recoveryTime)\n")
//        details.append("Range: \(self.range)\n")
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
//        details.append("Resource Cost: \(self.resourceCost)\n")
//        details.append("Cooldown: \(self.cooldown)\n")
//        details.append("Cast Time: \(self.castTime)\n")
//        details.append("Horizontal Distance: \(self.horizontalDistance)\n")
//        details.append("Vertical Distance: \(self.verticalDistance)\n")
//        details.append("Move Speed: \(self.moveSpeed)\n")
//        details.append("Speed Duration: \(self.speedDuration)\n")
//        details.append("Radius: \(self.radius)\n")
        return details
    }
}

