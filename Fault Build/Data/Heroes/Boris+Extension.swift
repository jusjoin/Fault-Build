//
//  Boris+Extension.swift
//  Fault Build
//
//  Created by Zane on 9/15/20.
//  Copyright © 2020 JusDev Studios. All rights reserved.
//

import Foundation
import UIKit

extension Boris: Hero {
    var name: String {
        get {
            return Heroes.boris.name
        }
    }
    
    var iconURL: String {
        return "https://api.playfault.com/imagecdn/portraits/14.jpg"
        
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
        return "Boris_banner"
        //"https://global-uploads.webflow.com/5d44771a95c1f5121689f944/5eb614ccccd7e75fb34dc8a4_T_BorisDefault_Portrait.jpg"
    }
    
    var eAbilityImageURL: String {
        return "https://api.playfault.com/imagecdn/abilities/Boris/E.png"
    }
    
    var lmbAbilityImageURL: String {
        return "https://api.playfault.com/imagecdn/abilities/Boris/LMB.png"
    }
    
    var pAbilityImageURL: String {
        return "https://api.playfault.com/imagecdn/abilities/Boris/P.png"
    }
    
    var qAbilityImageURL: String {
        return "https://api.playfault.com/imagecdn/abilities/Boris/Q.png"
    }
    
    var rAbilityImageURL: String {
        return "https://api.playfault.com/imagecdn/abilities/Boris/R.png"
    }
    
    var rmbAbilityImageURL: String {
        return "https://api.playfault.com/imagecdn/abilities/Boris/RMB.png"
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

extension BorisPAbility: Ability {
    func getName() -> String {
        return self.name
    }
    
    func getDetails() -> String {
        return self.pDescription
    }
    
    
}

extension BorisQAbility: Ability {
    func getName() -> String {
        return self.name
    }
    
    func getDetails() -> String {
        var details = ""
        details.append("\(self.qDescription)\n\n")
        details.append("Resource Cost: \(self.resourceCost)\n")
        details.append("Cooldown: \(self.cooldown)\n")
        details.append("Range: \(self.range)\n")
        details.append("Cast Time: \(self.castTime)\n")
        details.append("Trigger PCTMax Health: \(self.triggerPCTMaxHealth)\n")
        details.append("Duration: \(self.duration)\n")
        details.append("Atk Speed Bonus: \(self.attackSpeedBonus)\n")
        details.append("Move Speed Bonus: \(self.movementSpeedBonus)")
        return details
    }
    
    
}

extension BorisEAbility: Ability {
    func getName() -> String {
        return self.name
    }
    
    func getDetails() -> String {
        var details = ""
        details.append("\(self.eDescription)\n\n")
        details.append("Resource Cost: \(self.resourceCost)\n")
        details.append("Cooldown: \(self.cooldown)\n")
        details.append("Energy/Unit: \(self.energyperUnit)\n")
        details.append("Energy/Jungle Buff: \(self.energyperJungleBuff)\n")
        details.append("Energy/Hero: \(self.energyperHero)\n")
        details.append("Energy/Canister: \(self.energyperCanister)\n")
        details.append("Max Total Energy: \(self.maxTotalEnergy)\n")
        details.append("Pickup Radius: \(self.pickupRadius)\n")
        details.append("Animation Rate Scale: \(self.animationRateScale)\n")
        details.append("BLHeal Factor: \(self.bLHealFactor)\n")
        details.append("BLDamage Factor: \(self.bLHealDmgFactor)\n")
        details.append("Move Speed Bonus: \(self.movementSpeedBonus)\n")
        details.append("Buff Duration: \(self.buffDuration)\n")
        details.append("Unstoppable Duration: \(self.unstoppableDuration)\n")
        details.append("Max Duration on Ground: \(self.maxDurationOnGround)")
        return details
    }
    
    
}

extension BorisRAbility: Ability {
    func getName() -> String {
        return self.name
    }
    
    func getDetails() -> String {
        var details = ""
        details.append("\(self.rDescription)\n\n")
        details.append("Base Damage: \(self.baseDamage)\n")
        details.append("Resource Cost: \(self.resourceCost)\n")
        details.append("Cooldown: \(self.cooldown)\n")
        details.append("Range: \(self.range)\n")
        details.append("Movement Duration: \(self.movementDuration)\n")
        details.append("Scaling Factor: \(self.scalingFactor)\n")
        details.append("Dmg/Target Missing HP: \(self.bDmgPTrgtMissHP)\n")
        details.append("HP Execute Threshhold: \(self.hpExeThresh)\n")
        details.append("Recovery Time: \(self.recoveryTime)")
        return details
    }
}

extension BorisRMBAbility: Ability {
    func getName() -> String {
        return self.name
    }
    
    func getDetails() -> String {
        var details = ""
        details.append("\(self.rmbDescription)\n\n")
        details.append("Base BADamage: \(self.baseBADamage)\n")
        details.append("Resource Cost: \(self.resourceCost)\n")
        details.append("Cooldown: \(self.cooldown)\n")
        details.append("Leap Distance: \(self.leapDistance)\n")
        details.append("Duration: \(self.duration)")
        return details
    }
}
