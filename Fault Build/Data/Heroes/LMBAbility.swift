//
//  LMBAbility.swift
//  Fault Build
//
//  Created by Zane on 8/20/20.
//  Copyright © 2020 JusDev Studios. All rights reserved.
//

import Foundation

// MARK: - LMBAbility
class LMBAbility: Codable {
    let name, lmbDescription: String
    let cooldown: Double
    let range, physicalDamage, energyDamage, attackSpeedPerLevel: Int
    let adaptiveDamagePerLevel: Double
    let scalingFactor: String

    enum CodingKeys: String, CodingKey {
        case name
        case lmbDescription = "description"
        case cooldown, range, physicalDamage, energyDamage, attackSpeedPerLevel, adaptiveDamagePerLevel, scalingFactor
    }
    
    func getCooldown() -> Double {
        return self.cooldown
    }
    
    func getRange() -> Int {
        return self.range
    }
    
    func getPhysicalDamager() -> Int {
        return self.physicalDamage
    }
    
    func getEnergyDamage() -> Int {
        return self.energyDamage
    }
    func getAttackSpeedPerLevel()  -> Int {
        return self.attackSpeedPerLevel
    }
    
    func getAdaptiveDamagePerLevel()  -> Double {
        return self.adaptiveDamagePerLevel
    }
    
    func getScalingFactor()  -> String {
        return self.scalingFactor
    }
}
