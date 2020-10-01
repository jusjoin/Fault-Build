//
//  Sparrow+Extension.swift
//  Fault Build
//
//  Created by Zane on 9/20/20.
//  Copyright © 2020 JusDev Studios. All rights reserved.
//

//   let heroData = try? newJSONDecoder().decode(HeroData.self, from: jsonData)

import Foundation
import UIKit

extension Sparrow: Hero {
    var name: String {
        get {
            return Heroes.sparrow.name
        }
    }
    
    var iconURL: String {
        return "https://api.playfault.com/imagecdn/portraits/15.jpg"
        
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
        return "Sparrow_banner"
        //"https://global-uploads.webflow.com/5d44771a95c1f5121689f944/5eb614cc0e0bc8507560204e_T_SparrowDefault_Portrait.jpg"
    }
    
    var eAbilityImageURL: String {
        return "https://api.playfault.com/imagecdn/abilities/Sparrow/E.png"
    }
    
    var lmbAbilityImageURL: String {
        return "https://api.playfault.com/imagecdn/abilities/Sparrow/LMB.png"
    }
    
    var pAbilityImageURL: String {
        return "https://api.playfault.com/imagecdn/abilities/Sparrow/P.png"
    }
    
    var qAbilityImageURL: String {
        return "https://api.playfault.com/imagecdn/abilities/Sparrow/Q.png"
    }
    
    var rAbilityImageURL: String {
        return "https://api.playfault.com/imagecdn/abilities/Sparrow/R.png"
    }
    
    var rmbAbilityImageURL: String {
        return "https://api.playfault.com/imagecdn/abilities/Sparrow/RMB.png"
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

extension SparrowPAbility: Ability {
    func getName() -> String {
        return self.name
    }
    
    func getDetails() -> String {
        return self.pDescription
    }
}

extension SparrowQAbility: Ability {
    func getName() -> String {
        return self.name
    }
    
    func getDetails() -> String {
        var details = ""
        details.append("\(self.qDescription)\n\n")
        details.append("Base Damage: \(self.baseDamage)\n")
        details.append("Resource Cost: \(self.resourceCost)\n")
        details.append("Cooldown: \(self.cooldown)\n")
        details.append("Cast Time: \(self.castTime)\n")
        details.append("Effect Delay: \(self.effectDelay)\n")
        details.append("eStack gain per Rate: \(self.eStackGainperRate)\n")
        details.append("Range: \(self.range)\n")
        details.append("Radius: \(self.radius)\n")
        details.append("Lifetime: \(self.lifetime)\n")
        details.append("Rate: \(self.rate)\n")
        details.append("Scaling Factor: \(self.scalingFactor)")
        return details
    }
}

extension SparrowEAbility: Ability {
    func getName() -> String {
        return self.name
    }
    
    func getDetails() -> String {
        var details = ""
        details.append("\(self.eDescription)\n\n")
        details.append("Resource Cost: \(self.resourceCost)\n")
        details.append("Cooldown: \(self.cooldown)\n")
        details.append("Buff Duration: \(self.buffDuration)\n")
        details.append("exPass Stack per hit: \(self.exPassStackpHit)\n")
        details.append("pStack on E Hit: \(self.pStacksonEHit)\n")
        details.append("Slow: \(self.slow)\n")
        details.append("Slow Duration: \(self.slowDuration)")
        return details
    }
}

extension SparrowRAbility: Ability {
    func getName() -> String {
        return self.name
    }
    
    func getDetails() -> String {
        var details = ""
        details.append("\(self.rDescription)\n\n")
        details.append("Resource Cost: \(self.resourceCost)\n")
        details.append("Cooldown: \(self.cooldown)\n")
        details.append("Duration: \(self.duration)\n")
        details.append("Side Projectile Damage: \(self.sPDmg)\n")
        details.append("Side Projectile Angle: \(self.sideProjectileAngle)\n")
        details.append("Side Projectiles: \(self.sideProjectiles)")
        return details
    }
}

extension SparrowRMBAbility: Ability {
    func getName() -> String {
        return self.name
    }
    
    func getDetails() -> String {
        var details = ""
        details.append("\(self.rmbDescription)\n\n")
        details.append("Base Damage: \(self.baseDamage)\n")
        details.append("Resource Cost: \(self.resourceCost)\n")
        details.append("Cooldown: \(self.cooldown)\n")
        details.append("Cast Time: \(self.castTime)\n")
        details.append("Cast Movement Multiplier: \(self.castMovementMultiplier)\n")
        details.append("Min Channel Time: \(self.minimumChannelTime)\n")
        details.append("Max Damage Channel Time: \(self.maxDamageChannelTime)\n")
        details.append("Starting Channel Damage: \(self.startingChannelDamage)\n")
        details.append("End Channel Damage: \(self.endChannelDamage)\n")
        details.append("Projectile Speed: \(self.projectileSpeed)\n")
        details.append("Range: \(self.range)\n")
        details.append("Scaling Factor: \(self.scalingFactor)")
        return details
    }
}

