//
//  Countess+Extension.swift
//  Fault Build
//
//  Created by Zane on 9/16/20.
//  Copyright © 2020 JusDev Studios. All rights reserved.
//

import Foundation

extension Countess: Hero {
    var name: String {
        get {
            return Heroes.countess.name
        }
    }
    
    var iconURL: String {
        return "https://api.playfault.com/imagecdn/portraits/9.jpg"
    }
    
    var bannerName: String {
        return "Countess_banner"
        //https://global-uploads.webflow.com/5d44771a95c1f5121689f944/5eb614cc3db34c5a7c22c759_T_CountessDefault_Portrait.jpg
    }
    
    var eAbilityImageURL: String {
        return "https://api.playfault.com/imagecdn/abilities/Countess/E.png"
    }
    
    var lmbAbilityImageURL: String {
        return "https://api.playfault.com/imagecdn/abilities/Countess/LMB.png"
    }
    
    var pAbilityImageURL: String {
        return "https://api.playfault.com/imagecdn/abilities/Countess/P.png"
    }
    
    var qAbilityImageURL: String {
        return "https://api.playfault.com/imagecdn/abilities/Countess/Q.png"
    }
    
    var rAbilityImageURL: String {
        return "https://api.playfault.com/imagecdn/abilities/Countess/R.png"
    }
    
    var rmbAbilityImageURL: String {
        return "https://api.playfault.com/imagecdn/abilities/Countess/RMB.png"
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

extension CountessPAbility: Ability {
    func getName() -> String {
        return self.name
    }
    
    func getDetails() -> String {
        return ""
    }
    
    
}

extension CountessQAbility: Ability {
    func getName() -> String {
        return self.name
    }
    
    func getDetails() -> String {
        var details = ""
        details.append("\(self.qDescription)\n\n")
        details.append("Resource Cost: \(self.resourceCost)\n")
        details.append("Cooldown: \(self.cooldown)\n")
        details.append("Base Damage: \(self.baseDamage)\n")
        details.append("Range: \(self.range)\n")
        details.append("Initial Recorver Time: \(self.initialRecoveryTime)\n")
        details.append("Slow: \(self.slow)\n")
        details.append("Slow Duration: \(self.slowDuration)\n")
        details.append("Recast Delay: \(self.recastDelay)\n")
        details.append("Recast Timeout: \(self.recastTimeout)\n")
        details.append("Scaling Factor: \(self.scalingFactor)\n")
        return details
    }
}

extension CountessEAbility: Ability {
    func getName() -> String {
        return self.name
    }
    
    func getDetails() -> String {
        var details = ""
        details.append("\(self.eDescription)\n\n")
        details.append("Resource Cost: \(self.resourceCost)\n")
        details.append("Cooldown: \(self.cooldown)\n")
        details.append("Base Damage: \(self.baseDamage)\n")
        details.append("Range: \(self.range)\n")
        details.append("Cast Time: \(self.castTime)\n")
        details.append("Width: \(self.width)\n")
        details.append("Height: \(self.height)\n")
        details.append("Speed: \(self.speed)\n")
        details.append("Recovery Time: \(self.recoveryTime)\n")
        details.append("Recovery Movement Multiplier: \(self.recoveryMovementMultiplier)\n")
        details.append("Scaling Factor: \(self.scalingFactor)\n")
        return details
    }
}

extension CountessRAbility: Ability {
    func getName() -> String {
        return self.name
    }
    
    func getDetails() -> String {
        var details = ""
        details.append("\(self.rDescription)\n\n")
        details.append("Resource Cost: \(self.resourceCost)\n")
        details.append("Cooldown: \(self.cooldown)\n")
        details.append("Base Damage: \(self.baseDamage)\n")
        details.append("Range: \(self.range)\n")
        details.append("Channel Duration: \(self.channelDuration)\n")
        details.append("Duration: \(self.duration)\n")
        details.append("Recovery Time: \(self.recoveryTime)\n")
        details.append("Scaling Factor: \(self.scalingFactor)\n")
        return details
    }
}

extension CountessRMBAbility: Ability {
    func getName() -> String {
        return self.name
    }
    
    func getDetails() -> String {
        var details = ""
        details.append("\(self.rmbDescription)\n\n")
        details.append("Resource Cost: \(self.resourceCost)\n")
        details.append("Cooldown: \(self.cooldown)\n")
        details.append("Base Damage: \(self.baseDamage)\n")
        details.append("Cast Time: \(self.castTime)\n")
        details.append("Radius: \(self.radius)\n")
        details.append("Height: \(self.height)\n")
        details.append("Passive Bonus %: \(self.bonusToPassive)\n")
        details.append("% Passive Effect: \(self.ofPassiveEffect)\n")
        details.append("Damage Bonus Q: \(self.dmgBonusQ)\n")
        details.append("Damage Bonus E: \(self.dmgBonusE)\n")
        details.append("Damage Bonus R: \(self.dmgBonusR)\n")
        details.append("Duration: \(self.duration)\n")
        details.append("Recovery Time: \(self.recoveryTime)\n")
        details.append("Scaling Factor: \(self.scalingFactor)\n")
        return details
    }
}
