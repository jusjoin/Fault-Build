//
//  Twinblast+Extension.swift
//  Fault Build
//
//  Created by Zane on 9/20/20.
//  Copyright © 2020 JusDev Studios. All rights reserved.
//

import Foundation
import UIKit

extension Twinblast: Hero {
    var name: String {
        get {
            return Heroes.twinblast.name
        }
    }
    
    var iconURL: String {
        return "https://api.playfault.com/imagecdn/portraits/2.jpg"
        
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
        return "Twinblast_banner"
        //"https://global-uploads.webflow.com/5d44771a95c1f5121689f944/5eb614cb3db34c84f322c758_T_TwinblastDefault_Portrait.jpg"
    }
    
    var eAbilityImageURL: String {
        return "https://api.playfault.com/imagecdn/abilities/Twinblast/E.png"
    }
    
    var lmbAbilityImageURL: String {
        return "https://api.playfault.com/imagecdn/abilities/Twinblast/LMB.png"
    }
    
    var pAbilityImageURL: String {
        return "https://api.playfault.com/imagecdn/abilities/Twinblast/P.png"
    }
    
    var qAbilityImageURL: String {
        return "https://api.playfault.com/imagecdn/abilities/Twinblast/Q.png"
    }
    
    var rAbilityImageURL: String {
        return "https://api.playfault.com/imagecdn/abilities/Twinblast/R.png"
    }
    
    var rmbAbilityImageURL: String {
        return "https://api.playfault.com/imagecdn/abilities/Twinblast/RMB.png"
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

extension TwinblastPAbility: Ability {
    func getName() -> String {
        return self.name
    }
    
    func getDetails() -> String {
        return self.pDescription
    }
}

extension TwinblastQAbility: Ability {
    func getName() -> String {
        return self.name
    }
    
    func getDetails() -> String {
        var details = ""
        details.append("\(self.qDescription)\n\n")
        details.append("Base Damage: \(self.baseDamage)\n")
        details.append("Resource Cost: \(self.resourceCost)\n")
        details.append("Cooldown: \(self.cooldown)\n")
        details.append("Cast Time Charged Grenade: \(self.castTimeChargedGrenade)\n")
        details.append("Charged Shot Charges: \(self.chargedShotCharges)\n")
        details.append("Effect Delay: \(self.effectDelay)\n")
        details.append("Speed: \(self.speed)\n")
        details.append("Width: \(self.width)\n")
        details.append("Radius: \(self.radius)\n")
        details.append("Charge Shot Radius: \(self.chargeshotRadius)\n")
        details.append("Slow: \(self.slow)\n")
        details.append("Slow Duration: \(self.slowDuration)\n")
        details.append("Hold Time Threshhold: \(self.holdtimethreshold)\n")
        details.append("Internal Grenade Cooldown: \(self.internalgrenadecooldown)\n")
        details.append("Max Charges: \(self.maxCharges)\n")
        details.append("Max Range: \(self.maxRange)\n")
        details.append("Resource Cost Charged: \(self.resourceCostCharged)\n")
        details.append("Recovery Time Charged Blast: \(self.recoveryTimeChargedBlast)\n")
        details.append("Recovery Time Single Grenade: \(self.recoveryTimeSingleGrenade)\n")
        details.append("Slow Duration Charged Grenade: \(self.slowDurationChargedGrenade)\n")
        details.append("Animation Rate Scale: \(self.animationRateScale)\n")
        details.append("Recovery Anim Rate Scale: \(self.recoveryAnimationRateScale)\n")
        details.append("Scaling Factor: \(self.scalingFactor)")
        return details
    }
}

extension TwinblastEAbility: Ability {
    func getName() -> String {
        return self.name
    }
    
    func getDetails() -> String {
        var details = ""
        details.append("\(self.eDescription)\n\n")
        details.append("Resource Cost: \(self.resourceCost)\n")
        details.append("Cooldown: \(self.cooldown)\n")
        details.append("Charges: \(self.charges)\n")
        details.append("Distance: \(self.distance)\n")
        details.append("Duration: \(self.duration)\n")
        details.append("Grenade Charge per Roll: \(self.grenadeChargeGainedPerRoll)\n")
        details.append("Height: \(self.height)\n")
        details.append("Recovery Time: \(self.recoveryTime)")
        return details
    }
}

extension TwinblastRAbility: Ability {
    func getName() -> String {
        return self.name
    }
    
    func getDetails() -> String {
        var details = ""
        details.append("\(self.rDescription)\n\n")
        details.append("Resource Cost: \(self.resourceCost)\n")
        details.append("Cooldown: \(self.cooldown)\n")
        details.append("Duration: \(self.duration)\n")
        details.append("SP Damage: \(self.sPDmg)\n")
        details.append("Cast Movement Multiplier: \(self.castMovementMultiplier)\n")
        return details
    }
}

extension TwinblastRMBAbility: Ability {
    func getName() -> String {
        return self.name
    }
    
    func getDetails() -> String {
        var details = ""
        details.append("\(self.rmbDescription)\n\n")
        details.append("Resource Cost: \(self.resourceCost)\n")
        details.append("Cooldown: \(self.cooldown)\n")
        details.append("Attack Speed: \(self.attackSpeed)\n")
        details.append("ASp PS: \(self.aSPPS)\n")
        details.append("BBBADp PSt: \(self.bBBADPPSt)\n")
        details.append("Buff Duration: \(self.buffDuration)\n")
        return details
    }
}

