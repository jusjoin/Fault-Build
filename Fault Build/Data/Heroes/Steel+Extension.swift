//
//  Steel+Extension.swift
//  Fault Build
//
//  Created by Zane on 9/20/20.
//  Copyright © 2020 JusDev Studios. All rights reserved.
//

import Foundation
import UIKit

extension Steel: Hero {
    var name: String {
        get {
            return Heroes.steel.name
        }
    }
    
    var iconURL: String {
        return "https://api.playfault.com/imagecdn/portraits/13.jpg"
        
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
        return "Steel_banner"
        //"https://global-uploads.webflow.com/5d44771a95c1f5121689f944/5eb614ccf92b5813c00cf4bc_T_SteelDefault_Portrait.jpg"
    }
    
    var eAbilityImageURL: String {
        return "https://api.playfault.com/imagecdn/abilities/Steel/E.png"
    }
    
    var lmbAbilityImageURL: String {
        return "https://api.playfault.com/imagecdn/abilities/Steel/LMB.png"
    }
    
    var pAbilityImageURL: String {
        return "https://api.playfault.com/imagecdn/abilities/Steel/P.png"
    }
    
    var qAbilityImageURL: String {
        return "https://api.playfault.com/imagecdn/abilities/Steel/Q.png"
    }
    
    var rAbilityImageURL: String {
        return "https://api.playfault.com/imagecdn/abilities/Steel/R.png"
    }
    
    var rmbAbilityImageURL: String {
        return "https://api.playfault.com/imagecdn/abilities/Steel/RMB.png"
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

extension SteelPAbility: Ability {
    func getName() -> String {
        return self.name
    }
    
    func getDetails() -> String {
        return self.pDescription
    }
}

extension SteelQAbility: Ability {
    func getName() -> String {
        return self.name
    }
    
    func getDetails() -> String {
        var details = ""
        details.append("\(self.qDescription)\n\n")
        details.append("Base Damage: \(self.baseDamage)\n")
        details.append("Resource Cost: \(self.resourceCost)\n")
        details.append("Cooldown: \(self.cooldown)\n")
        details.append("Displacement Angle: \(self.displacementangle)\n")
        details.append("Displacement Speed: \(self.displacementspeed)\n")
        details.append("Height: \(self.height)\n")
        details.append("Width: \(self.width)\n")
        details.append("Range: \(self.range)\n")
        details.append("Ready Movement Multiplier: \(self.readyMovementMultiplier)\n")
        details.append("Recovery Time: \(self.recoveryTime)\n")
        details.append("Recovery Movement Multiplier: \(self.recoveryMovementMultiplier)\n")
        details.append("Windup Anim Duration: \(self.windupAnimationDuration)\n")
        details.append("Speed: \(self.speed)\n")
        details.append("Scaling Factor: \(self.scalingFactor)")
        return details
    }
}

extension SteelEAbility: Ability {
    func getName() -> String {
        return self.name
    }
    
    func getDetails() -> String {
        var details = ""
        details.append("\(self.eDescription)\n\n")
        details.append("Resource Cost: \(self.resourceCost)\n")
        details.append("Cooldown: \(self.cooldown)\n")
        details.append("AM: \(self.aM)\n")
        details.append("Cast Range: \(self.castRange)\n")
        details.append("Casting Movement Modifier: \(self.castingMovementModifier)\n")
        details.append("Depth: \(self.depth)\n")
        details.append("Height: \(self.height)\n")
        details.append("Width: \(self.width)\n")
        details.append("Max SHield Lifetime: \(self.maxShieldLifetime)\n")
        details.append("Movement Slow: \(self.movementslow)\n")
        details.append("Slow: \(self.slow)\n")
        details.append("Slow Duration: \(self.slowDuration)")
        return details
    }
}

extension SteelRAbility: Ability {
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
        details.append("Height: \(self.height)\n")
        details.append("Knockup Speed: \(self.knockupSpeed)\n")
        details.append("Radius: \(self.radius)\n")
        details.append("Recovery Time: \(self.recoveryTime)\n")
        details.append("Range: \(self.range)\n")
        details.append("Stun Duration: \(self.stunDuration)\n")
        details.append("Scaling Factor: \(self.scalingFactor)")
        return details
    }
}

extension SteelRMBAbility: Ability {
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
        details.append("AM: \(self.aM)\n")
        details.append("Angle: \(self.angle)\n")
        details.append("Range: \(self.range)\n")
        details.append("Recovery Time: \(self.recoveryTime)\n")
        details.append("Stun Duration: \(self.stunDuration)\n")
        details.append("Animation Duration: \(self.animationDuration)\n")
        details.append("Movement Multiplier: \(self.movementMultiplier)\n")
        details.append("Scaling Factor: \(self.scalingFactor)")
        return details
    }
}

