//
//  Narbash+Extension.swift
//  Fault Build
//
//  Created by Zane on 9/20/20.
//  Copyright © 2020 JusDev Studios. All rights reserved.
//

import Foundation
import UIKit

extension Narbash: Hero {
    var name: String {
        get {
            return Heroes.narbash.name
        }
    }
    
    var iconURL: String {
        return "https://api.playfault.com/imagecdn/portraits/12.jpg"
        
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
        return "Narbash_banner"
        //"https://global-uploads.webflow.com/5d44771a95c1f5121689f944/5eb614cf820500c104dca2a4_T_NarbashDefault_Portrait.jpg"
    }
    
    var eAbilityImageURL: String {
        return "https://api.playfault.com/imagecdn/abilities/Narbash/E.png"
    }
    
    var lmbAbilityImageURL: String {
        return "https://api.playfault.com/imagecdn/abilities/Narbash/LMB.png"
    }
    
    var pAbilityImageURL: String {
        return "https://api.playfault.com/imagecdn/abilities/Narbash/P.png"
    }
    
    var qAbilityImageURL: String {
        return "https://api.playfault.com/imagecdn/abilities/Narbash/Q.png"
    }
    
    var rAbilityImageURL: String {
        return "https://api.playfault.com/imagecdn/abilities/Narbash/R.png"
    }
    
    var rmbAbilityImageURL: String {
        return "https://api.playfault.com/imagecdn/abilities/Narbash/RMB.png"
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

extension NarbashPAbility: Ability {
    func getName() -> String {
        return self.name
    }
    
    func getDetails() -> String {
        return self.pDescription
    }
}

extension NarbashQAbility: Ability {
    func getName() -> String {
        return self.name
    }
    
    func getDetails() -> String {
        var details = ""
        details.append("\(self.qDescription)\n\n")
        details.append("Resource Cost: \(self.resourceCost)\n")
        details.append("Cooldown: \(self.cooldown)\n")
        details.append("Bonus Move Speed: \(self.bonusMoveSpeed)\n")
        details.append("Radius: \(self.radius)\n")
        details.append("Duration: \(self.duration)")
        return details
    }
}

extension NarbashEAbility: Ability {
    func getName() -> String {
        return self.name
    }
    
    func getDetails() -> String {
        var details = ""
        details.append("\(self.eDescription)\n\n")
        details.append("Resource Cost: \(self.resourceCost)\n")
        details.append("Cooldown: \(self.cooldown)\n")
        details.append("HP per Rate: \(self.hPperRate)\n")
        details.append("Radius: \(self.radius)\n")
        details.append("Rate: \(self.rate)\n")
        details.append("Scaling Factor: \(self.scalingFactor)")
        return details
    }
}

extension NarbashRAbility: Ability {
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
        details.append("Radius: \(self.radius)\n")
        details.append("Slow: \(self.slow)\n")
        details.append("Knockup Speed: \(self.knockupspeed)\n")
        details.append("Lifetime: \(self.lifetime)\n")
        details.append("Rate: \(self.rate)\n")
        details.append("Channel Movement Multiplier: \(self.channelMovementMultiplier)\n")
        details.append("Channel Duration: \(self.channelduration)\n")
        details.append("Scaling Factor: \(self.scalingFactor)")
        return details
    }
}

extension NarbashRMBAbility: Ability {
    func getName() -> String {
        return self.name
    }
    
    func getDetails() -> String {
        var details = ""
        details.append("\(self.rmbDescription)\n\n")
        details.append("Base Damage: \(self.baseDamage)\n")
        details.append("Resource Cost: \(self.resourceCost)\n")
        details.append("Cooldown: \(self.cooldown)\n")
        details.append("Duration: \(self.duration)\n")
        details.append("Speed: \(self.speed)\n")
        details.append("Range: \(self.range)\n")
        details.append("Width: \(self.width)\n")
        details.append("Scaling Factor: \(self.scalingFactor)\n")
        return details
    }
}

