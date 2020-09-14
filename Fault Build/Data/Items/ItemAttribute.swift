//
//  Item.swift
//  Fault Build
//
//  Created by Zane on 8/22/20.
//  Copyright © 2020 JusDev Studios. All rights reserved.
//

import Foundation
import UIKit

enum ItemAttribute: Int, CaseIterable {
    case ouchPower
    case ouchieArmor
    case ouchiePenetration
    case zapPower
    case sizzleArmor
    case sizzlePenetration
    case health
    case healthRegenRate
    case mana
    case manaRegenRate
    case pctCDR //cooldown
    case attackSpeed
    case movementSpeed
    case critChance
    case lifesteal
    
    func description() -> String {
        var description = ""
        
        switch self {
        case .ouchPower:
            description = "OuchPower"
        case .ouchieArmor:
            description = "OuchieArmor"
        case .ouchiePenetration:
            description = "FlatOuchiePenetration"
        case .zapPower:
            description = "ZapPower"
        case .sizzleArmor:
            description = "SizzleArmor"
        case .sizzlePenetration:
            description = "FlatSizzlePenetration"
        case .health:
            description = "Health"
        case .healthRegenRate:
            description = "HealthRegenRate"
        case .mana:
            description = "Mana"
        case .manaRegenRate:
            description = "ManaRegenRate"
        case .pctCDR:
            description = "PCTCDR"
        case .attackSpeed:
            description = "AttackSpeed"
        case .movementSpeed:
            description = "MovementSpeed"
        case .critChance:
            description = "CritChance"
        case .lifesteal:
            description = "LifeSteal"
        }
        
        return description
    }
    
    func displayName() -> String {
        var display = ""
        
        switch self {
        case .ouchPower:
            display = "Physical Power"
        case .ouchieArmor:
            display = "Physical Armor"
        case .ouchiePenetration:
            display = "Physical Penetration"
        case .zapPower:
            display = "Energy Power"
        case .sizzleArmor:
            display = "Energy Armor"
        case .sizzlePenetration:
            display = "Energy Penetration"
        case .health:
            display = "Health"
        case .healthRegenRate:
            display = "Health Regen"
        case .mana:
            display = "Mana"
        case .manaRegenRate:
            display = "Mana Regen"
        case .pctCDR:
            display = "CD Reduction"
        case .attackSpeed:
            display = "Attack Speed"
        case .movementSpeed:
            display = "Movement Speed"
        case .critChance:
            display = "Crit Chance"
        case .lifesteal:
            display = "Lifesteal"
        }
        
        return display
    }
}
