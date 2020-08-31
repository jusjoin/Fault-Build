//
//  Item.swift
//  Fault Build
//
//  Created by Zane on 8/22/20.
//  Copyright © 2020 JusDev Studios. All rights reserved.
//

import Foundation

enum ItemAttribute: Int, CaseIterable {
    case ouchPower
    case ouchieArmor
    case ouchiePenetration
    case zapPower
    case sizzleArmor
    case sizlePenetration
    case health
    case healthRegenRate
    case mana
    case manaRegenRate
    case pctDR //cooldown
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
        case .sizlePenetration:
            description = "FlatSizzlePenetration"
        case .health:
            description = "Health"
        case .healthRegenRate:
            description = "HealthRegenRate"
        case .mana:
            description = "Mana"
        case .manaRegenRate:
            description = "ManaRegenRate"
        case .pctDR:
            description = "PCTDR"
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
    
}


//switch sender.tag {
//case ItemAttribute.ouchPower.intValue():
//    break
//    
//case ItemAttribute.ouchieArmor.intValue():
//    break
//    
//case ItemAttribute.ouchiePenetration.intValue():
//    break
//    
//case ItemAttribute.zapPower.intValue():
//    break
//    
//case ItemAttribute.sizzleArmor.intValue():
//    break
//    
//case ItemAttribute.sizlePenetration.intValue():
//    break
//    
//case ItemAttribute.health.intValue():
//    break
//    
//case ItemAttribute.healthRegenRate.intValue():
//    break
//    
//case ItemAttribute.mana.intValue():
//    break
//    
//case ItemAttribute.manaRegenRate.intValue():
//    break
//    
//case ItemAttribute.pctDR.intValue():
//    break
//    
//case ItemAttribute.attackSpeed.intValue():
//    break
//    
//case ItemAttribute.movementSpeed.intValue():
//    break
//    
//case ItemAttribute.critChance.intValue():
//    break
//    
//case ItemAttribute.lifesteal.intValue():
//    break
//    
//default:
//    break
