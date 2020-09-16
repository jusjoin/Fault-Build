//
//  HeroCommon.swift
//  Fault Build
//
//  Created by Zane on 9/15/20.
//  Copyright © 2020 JusDev Studios. All rights reserved.
//

import Foundation

class HeroCommon {
    let health, healthPerLevel: Int
    let healthRegen, healthRegenPerLevel: Double
    let mana, manaPerLevel: Int
    let manaRegen, manaRegenPerLevel: Double
    let physicalArmor: Int
    let physicalArmorPerLevel, energyArmor, energyArmorPerLevel: Double
    let moveSpeed: Int
    let lmbAbility: LMBAbility
    
    internal init(health: Int, healthPerLevel: Int, healthRegen: Double, healthRegenPerLevel: Double, mana: Int, manaPerLevel: Int, manaRegen: Double, manaRegenPerLevel: Double, physicalArmor: Int, physicalArmorPerLevel: Double, energyArmor: Double, energyArmorPerLevel: Double, moveSpeed: Int, lmbAbility: LMBAbility) {
        self.health = health
        self.healthPerLevel = healthPerLevel
        self.healthRegen = healthRegen
        self.healthRegenPerLevel = healthRegenPerLevel
        self.mana = mana
        self.manaPerLevel = manaPerLevel
        self.manaRegen = manaRegen
        self.manaRegenPerLevel = manaRegenPerLevel
        self.physicalArmor = physicalArmor
        self.physicalArmorPerLevel = physicalArmorPerLevel
        self.energyArmor = energyArmor
        self.energyArmorPerLevel = energyArmorPerLevel
        self.moveSpeed = moveSpeed
        self.lmbAbility = lmbAbility
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
        return self.energyArmor
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
}
