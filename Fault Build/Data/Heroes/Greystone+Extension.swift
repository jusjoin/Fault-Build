//
//  Greystone+Extension.swift
//  Fault Build
//
//  Created by Zane on 9/20/20.
//  Copyright © 2020 JusDev Studios. All rights reserved.
//

import Foundation
import UIKit

extension Greystone: Hero {
    var name: String {
        get {
            return Heroes.greystone.name
        }
    }
    
    var iconURL: String {
        return "https://api.playfault.com/imagecdn/portraits/11.jpg"
        
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
        return "Greystone_banner"
        //"https://global-uploads.webflow.com/5d44771a95c1f5121689f944/5eb614cfa119282196fbd11e_T_GreystoneDefault_Portrait.jpg"
    }
    
    var eAbilityImageURL: String {
        return "https://api.playfault.com/imagecdn/abilities/Greystone/E.png"
    }
    
    var lmbAbilityImageURL: String {
        return "https://api.playfault.com/imagecdn/abilities/Greystone/LMB.png"
    }
    
    var pAbilityImageURL: String {
        return "https://api.playfault.com/imagecdn/abilities/Greystone/P.png"
    }
    
    var qAbilityImageURL: String {
        return "https://api.playfault.com/imagecdn/abilities/Greystone/Q.png"
    }
    
    var rAbilityImageURL: String {
        return "https://api.playfault.com/imagecdn/abilities/Greystone/R.png"
    }
    
    var rmbAbilityImageURL: String {
        return "https://api.playfault.com/imagecdn/abilities/Greystone/RMB.png"
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

extension GreystonePAbility: Ability {
    func getName() -> String {
        return self.name
    }
    
    func getDetails() -> String {
        return self.pDescription
    }
}

extension GreystoneQAbility: Ability {
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
        details.append("Cooldown: \(self.cooldown)\n")
        details.append("Height: \(self.height)\n")
        details.append("Radius: \(self.radius)\n")
        details.append("Lifetime: \(self.lifetime)\n")
        details.append("PProcp TH: \(self.pProcpTH)\n")
        details.append("Rate: \(self.rate)\n")
        details.append("Scaling Factor: \(self.scalingFactor)")
        return details
    }
}

extension GreystoneEAbility: Ability {
    func getName() -> String {
        return self.name
    }
    
    func getDetails() -> String {
        var details = ""
        details.append("\(self.eDescription)\n\n")
        details.append("Resource Cost: \(self.resourceCost)\n")
        details.append("Cooldown: \(self.cooldown)\n")
        details.append("Base Damage: \(self.baseDamage)\n")
        details.append("Cast Time: \(self.castTime)\n")
        details.append("Disarm Duration: \(self.disarmDuration)\n")
        details.append("Angle: \(self.angle)\n")
        details.append("Height: \(self.height)\n")
        details.append("Range: \(self.range)\n")
        details.append("Recovery: \(self.recovery)\n")
        details.append("Rate Scale: \(self.rateScale)\n")
        details.append("Scaling Factor: \(self.scalingFactor)")
        return details
    }
}

extension GreystoneRAbility: Ability {
    func getName() -> String {
        return self.name
    }
    
    func getDetails() -> String {
        var details = ""
        details.append("\(self.rDescription)\n\n")
        details.append("Base Damage: \(self.baseDamage)\n")
        details.append("Cooldown: \(self.cooldown)\n")
        details.append("Delay: \(self.delay)\n")
        details.append("Height: \(self.height)\n")
        details.append("Radius: \(self.radius)\n")
        details.append("Max Range from Death: \(self.maxRangefromDeath)\n")
        details.append("PCTBase HPRes: \(self.pCTBaseHPRes)\n")
        details.append("PCTBase Mana Res: \(self.pCTBaseManaRes)\n")
        details.append("Slow: \(self.slow)\n")
        details.append("Slow Radius: \(self.slowRadius)\n")
        details.append("Slow Height: \(self.slowHeight)\n")
        details.append("Slow Duration: \(self.slowDuration)\n")
        details.append("Travel Time: \(self.travelTime)\n")
        details.append("Tar Con Time: \(self.tarConTime)\n")
        details.append("Scaling Factor: \(self.scalingFactor)")
        return details
    }
}

extension GreystoneRMBAbility: Ability {
    func getName() -> String {
        return self.name
    }
    
    func getDetails() -> String {
        var details = ""
        details.append("\(self.rmbDescription)\n\n")
        details.append("Base Damage: \(self.baseDamage)\n")
        details.append("Resource Cost: \(self.resourceCost)\n")
        details.append("Cooldown: \(self.cooldown)\n")
        details.append("Inner Radius: \(self.innerRadius)\n")
        details.append("Inner Radius Bonus Dmg: \(self.innerRadiusDmgBonus)\n")
        details.append("Outer Radius: \(self.outerRadius)\n")
        details.append("Range: \(self.range)\n")
        details.append("Recovery Time: \(self.recoveryTime)\n")
        details.append("TIme: \(self.time)\n")
        details.append("Scaling Factor: \(self.scalingFactor)")
        return details
    }
}
