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
    
    var iconName: String {
        return "Boris_icon"
        //"https://api.playfault.com/imagecdn/portraits/14.jpg"
    }
    
    var bannerName: String {
        return "Boris_banner"
        //"https://global-uploads.webflow.com/5d44771a95c1f5121689f944/5eb614ccccd7e75fb34dc8a4_T_BorisDefault_Portrait.jpg"
    }
    
    var eAbilityImageURL: String {
        "https://api.playfault.com/imagecdn/abilities/Boris/E.png"
    }
    
    var lmbAbilityImageURL: String {
        "https://api.playfault.com/imagecdn/abilities/Boris/LMB.png"
    }
    
    var pAbilityImageURL: String {
        "https://api.playfault.com/imagecdn/abilities/Boris/P.png"
    }
    
    var qAbilityImageURL: String {
        "https://api.playfault.com/imagecdn/abilities/Boris/Q.png"
    }
    
    var rAbilityImageURL: String {
        "https://api.playfault.com/imagecdn/abilities/Boris/R.png"
    }
    
    var rmbAbilityImageURL: String {
        "https://api.playfault.com/imagecdn/abilities/Boris/RMB.png"
    }
    
    func getBaseHealth() -> Int {
        return self.health
    }
    
    func getBaseMana() -> Int {
        return self.mana
    }
    
    func getBasicDefense() -> Int {
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
    
    func getMoveSpeed() -> Int {
        return self.moveSpeed
    }
    
    func getHealthPerLevel() -> Int {
        return self.healthPerLevel
    }
    
    func getHealthRegenPerLevel() -> Double {
        return self.healthRegenPerLevel
    }
    
    func getManaPerLevel() -> Int {
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
        details.append("Move Speed Bonus: \(self.movementSpeedBonus)\n")
        return details
    }
    
    
}

extension BorisEAbility: Ability {
    func getName() -> String {
        return self.name
    }
    
    func getDetails() -> String {
        var details = ""
        details.append("\(self.eDescription)")
        details.append("Resource Cost: \(self.resourceCost)\n")
        details.append("Cooldown: \(self.cooldown)\n")
        details.append("Energy/Unit: \(self.energyperUnit)\n")
        details.append("Energy/Jungle Buff: \(self.energyperJungleBuff)\n")
        details.append("Energy/Hero: \(self.energyperHero)\n")
        details.append("Energy/Canister: \(self.energyperCanister)\n")
        details.append("Max Total Energy: \(self.maxTotalEnergy)\n")
        details.append("Pickup Radius: \(self.pickupRadius)")
        details.append("Animation Rate Scale: \(self.animationRateScale)")
        details.append("BLHeal Factor: \(self.bLHealFactor)")
        details.append("BLDamage Factor: \(self.bLHealDmgFactor)")
        details.append("Move Speed Bonus: \(self.movementSpeedBonus)")
        details.append("Buff Duration: \(self.buffDuration)")
        details.append("Unstoppable Duration: \(self.unstoppableDuration)")
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
        details.append("Resource Cost: \(self.resourceCost)\n")
        details.append("Cooldown: \(self.cooldown)\n")
        details.append("Range: \(self.range)\n")
        details.append("Base Damage: \(self.baseDamage)")
        details.append("Movement Duration: \(self.movementDuration)")
        details.append("Scaling Factor: \(self.scalingFactor)")
        details.append("Dmg/Target Missing HP: \(self.bDmgPTrgtMissHP)")
        details.append("HP Execute Threshhold: \(self.hpExeThresh)")
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
        details.append("Resource Cost: \(self.resourceCost)\n")
        details.append("Cooldown: \(self.cooldown)\n")
        details.append("Leap Distance: \(self.leapDistance)\n")
        details.append("Duration: \(self.duration)")
        details.append("Base BADamage: \(self.baseBADamage)")
        return details
    }
}
