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
    
    var iconName: String {
        return "Countess_icon"
        //"https://api.playfault.com/imagecdn/portraits/9.jpg"
    }
    
    var bannerName: String {
        return "Countess_banner"
        //https://global-uploads.webflow.com/5d44771a95c1f5121689f944/5eb614cc3db34c5a7c22c759_T_CountessDefault_Portrait.jpg
    }
    
    var eAbilityImageURL: String {
        "https://api.playfault.com/imagecdn/abilities/Countess/E.png"
    }
    
    var lmbAbilityImageURL: String {
        "https://api.playfault.com/imagecdn/abilities/Countess/LMB.png"
    }
    
    var pAbilityImageURL: String {
        "https://api.playfault.com/imagecdn/abilities/Countess/P.png"
    }
    
    var qAbilityImageURL: String {
        "https://api.playfault.com/imagecdn/abilities/Countess/Q.png"
    }
    
    var rAbilityImageURL: String {
        "https://api.playfault.com/imagecdn/abilities/Countess/R.png"
    }
    
    var rmbAbilityImageURL: String {
        "https://api.playfault.com/imagecdn/abilities/Countess/RMB.png"
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
        return ""
    }
    
    
}

extension CountessEAbility: Ability {
    func getName() -> String {
        return self.name
    }
    
    func getDetails() -> String {
        return ""
    }
    
    
}

extension CountessRAbility: Ability {
    func getName() -> String {
        return self.name
    }
    
    func getDetails() -> String {
        return ""
    }
    
    
}

extension CountessRMBAbility: Ability {
    func getName() -> String {
        return self.name
    }
    
    func getDetails() -> String {
        return ""
    }
    
    
}
