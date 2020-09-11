//
//  Belica.swift
//  Fault Build
//
//  Created by Zane on 8/16/20.
//  Copyright © 2020 JusDev Studios. All rights reserved.
//

import Foundation
import UIKit

//// MARK: - Belica
//class Belica: Hero {
//    let info: BelicaInfo
//    let health, healthPerLevel: Int
//    let healthRegen, healthRegenPerLevel: Double
//    let mana, manaPerLevel: Int
//    let manaRegen, manaRegenPerLevel: Double
//    let physicalArmor: Int
//    let physicalArmorPerLevel, energyArmor, energyArmorPerLevel: Double
//    let moveSpeed: Int
//    let lmbAbility: LMBAbility
//    let rmbAbility: BelicaEAbility
//    let qAbility: BelicaQAbility
//    let eAbility: BelicaEAbility
//    let rAbility: BelicaRAbility
//    let pAbility: BelicaPAbility
//
//    init(info: BelicaInfo, health: Int, healthPerLevel: Int, healthRegen: Double, healthRegenPerLevel: Double, mana: Int, manaPerLevel: Int,
//         manaRegen: Double, manaRegenPerLevel: Double, physicalArmor: Int, physicalArmorPerLevel: Double, energyArmor: Double, energyArmorPerLevel: Double,
//         moveSpeed: Int, lmbAbility: LMBAbility, rmbAbility: BelicaEAbility, qAbility:BelicaQAbility, eAbility:BelicaEAbility, rAbility:BelicaRAbility,
//         pAbility: BelicaPAbility){
//        self.info = info
//        self.health = health
//        self.healthPerLevel = healthPerLevel
//        self.healthRegen = healthRegen
//        self.healthRegenPerLevel = healthRegenPerLevel
//        self.mana = mana
//        self.manaPerLevel = manaPerLevel
//        self.manaRegen = manaRegen
//        self.manaRegenPerLevel = manaRegenPerLevel
//        self.physicalArmor = physicalArmor
//        self.physicalArmorPerLevel = physicalArmorPerLevel
//        self.energyArmor = energyArmor
//        self.energyArmorPerLevel = energyArmorPerLevel
//        self.moveSpeed = moveSpeed
//        self.lmbAbility = lmbAbility
//        self.rmbAbility = rmbAbility
//        self.qAbility = qAbility
//        self.eAbility = eAbility
//        self.rAbility = rAbility
//        self.pAbility = pAbility
//    }
//
//    init(belica: Belica){
//        self.info = BelicaInfo(belicaInfo: belica.info)
//        self.health = belica.health
//        self.healthPerLevel = belica.healthPerLevel
//        self.healthRegen = belica.healthRegen
//        self.healthRegenPerLevel = belica.healthRegenPerLevel
//        self.mana = belica.mana
//        self.manaPerLevel = belica.manaPerLevel
//        self.manaRegen = belica.manaRegen
//        self.manaRegenPerLevel = belica.manaRegenPerLevel
//        self.physicalArmor = belica.physicalArmor
//        self.physicalArmorPerLevel = belica.physicalArmorPerLevel
//        self.energyArmor = belica.energyArmor
//        self.energyArmorPerLevel = belica.energyArmorPerLevel
//        self.moveSpeed = belica.moveSpeed
//        self.lmbAbility = LMBAbility(belicaLMBAbility: belica.lmbAbility)
//        self.rmbAbility = BelicaEAbility(belicaEAbility: belica.rmbAbility)
//        self.qAbility = BelicaQAbility(belicaQAbility: belica.qAbility)
//        self.eAbility = BelicaEAbility(belicaEAbility: belica.eAbility)
//        self.rAbility = BelicaRAbility(belicaRAbility: belica.rAbility)
//        self.pAbility = BelicaPAbility(belicaPAbility: belica.pAbility)
//    }
//}
//
//// MARK: - BelicaInfo
//class BelicaInfo: Codable {
//    let basicRange, niche, role, damageType: String
//    let infoDescription: String
//
//    enum CodingKeys: String, CodingKey {
//        case basicRange, niche, role, damageType
//        case infoDescription = "description"
//    }
//
//    init(basicRange: String, niche: String, role: String, damageType: String, infoDescription: String) {
//        self.basicRange = basicRange
//        self.niche = niche
//        self.role = role
//        self.damageType = damageType
//        self.infoDescription = infoDescription
//    }
//
//    init(belicaInfo: BelicaInfo) {
//        self.basicRange = belicaInfo.basicRange
//        self.niche = belicaInfo.niche
//        self.role = belicaInfo.role
//        self.damageType = belicaInfo.damageType
//        self.infoDescription = belicaInfo.infoDescription
//    }
//}
//
//// MARK: - BelicaEAbility
//class BelicaEAbility: Ability {
//    let name, eDescription: String
//    let xLevel: String?
//    let range, radius, cooldown, resourceCost: String
//    let lifetime: String?
//    let baseDamage, scalingFactor: String
//    let delay, manaperunithit: String?
//
//    enum CodingKeys: String, CodingKey {
//        case name
//        case eDescription = "description"
//        case xLevel, range, radius, cooldown, resourceCost, lifetime, baseDamage, scalingFactor, delay, manaperunithit
//    }
//
//    init(name: String, eDescription: String, xLevel: String?, range: String, radius: String, cooldown: String, resourceCost: String, lifetime: String?, baseDamage: String, scalingFactor: String, delay: String?, manaperunithit: String?) {
//        self.name = name
//        self.eDescription = eDescription
//        self.xLevel = xLevel
//        self.range = range
//        self.radius = radius
//        self.cooldown = cooldown
//        self.resourceCost = resourceCost
//        self.lifetime = lifetime
//        self.baseDamage = baseDamage
//        self.scalingFactor = scalingFactor
//        self.delay = delay
//        self.manaperunithit = manaperunithit
//    }
//
//    init(belicaEAbility: BelicaEAbility) {
//        self.name = belicaEAbility.name
//        self.eDescription = belicaEAbility.eDescription
//        self.xLevel = belicaEAbility.xLevel
//        self.range = belicaEAbility.range
//        self.radius = belicaEAbility.radius
//        self.cooldown = belicaEAbility.cooldown
//        self.resourceCost = belicaEAbility.resourceCost
//        self.lifetime = belicaEAbility.lifetime
//        self.baseDamage = belicaEAbility.baseDamage
//        self.scalingFactor = belicaEAbility.scalingFactor
//        self.delay = belicaEAbility.delay
//        self.manaperunithit = belicaEAbility.manaperunithit
//    }
//
//    func getName() -> String {
//        return self.name
//    }
//
//    func getDetails() -> String {
//        var details = ""
//        details += self.eDescription != "" ? self.eDescription + "\n\n" : ""
//        details += self.range != "" ? self.range + "\n" : ""
//        details += self.radius != "" ? self.radius + "\n" : ""
//        details += self.cooldown != "" ? self.cooldown + "\n" : ""
//        details += self.resourceCost != "" ? self.resourceCost + "\n" : ""
//        if let lifetime = self.lifetime {
//            details += lifetime != "" ? lifetime + "\n" : ""
//        }
//        details += self.baseDamage != "" ? self.baseDamage + "\n" : ""
//    }
//}
//
//// MARK: - BelicaPAbility
//class BelicaPAbility: Ability {
//    let name, pDescription, readyMovementMultiplier, baseDamage: String
//    let scalingFactor: String
//
//
//    init(name: String, pDescription: String, readyMovementMultiplier: String, baseDamage: String, scalingFactor: String) {
//        self.name = name
//        self.pDescription = pDescription
//        self.readyMovementMultiplier = readyMovementMultiplier
//        self.baseDamage = baseDamage
//        self.scalingFactor = scalingFactor
//    }
//
//    init(belicaPAbility: BelicaPAbility) {
//        self.name = belicaPAbility.name
//        self.pDescription = belicaPAbility.pDescription
//        self.readyMovementMultiplier = belicaPAbility.readyMovementMultiplier
//        self.baseDamage = belicaPAbility.baseDamage
//        self.scalingFactor = belicaPAbility.scalingFactor
//    }
//}
//
//// MARK: - BelicaQAbility
//class BelicaQAbility: Ability {
//    let name, qDescription, level, cooldown: String
//    let resourceCost, castTime, range, width: String
//    let speed, height, launchspeed, baseDamage: String
//    let scalingFactor, duration: String
//
//    init(name: String, qDescription: String, level: String, cooldown: String, resourceCost: String, castTime: String, range: String, width: String, speed: String, height: String, launchspeed: String, baseDamage: String, scalingFactor: String, duration: String) {
//        self.name = name
//        self.qDescription = qDescription
//        self.level = level
//        self.cooldown = cooldown
//        self.resourceCost = resourceCost
//        self.castTime = castTime
//        self.range = range
//        self.width = width
//        self.speed = speed
//        self.height = height
//        self.launchspeed = launchspeed
//        self.baseDamage = baseDamage
//        self.scalingFactor = scalingFactor
//        self.duration = duration
//    }
//
//    init(belicaQAbility: BelicaQAbility) {
//        self.name = belicaQAbility.name
//        self.qDescription = belicaQAbility.qDescription
//        self.level = belicaQAbility.level
//        self.cooldown = belicaQAbility.cooldown
//        self.resourceCost = belicaQAbility.resourceCost
//        self.castTime = belicaQAbility.castTime
//        self.range = belicaQAbility.range
//        self.width = belicaQAbility.width
//        self.speed = belicaQAbility.speed
//        self.height = belicaQAbility.height
//        self.launchspeed = belicaQAbility.launchspeed
//        self.baseDamage = belicaQAbility.baseDamage
//        self.scalingFactor = belicaQAbility.scalingFactor
//        self.duration = belicaQAbility.duration
//    }
//}
//
//// MARK: - BelicaRAbility
//class BelicaRAbility: Ability {
//    let name, rDescription, readyMovementMultiplier, range: String
//    let cooldown, resourceCost, castTime, baseDamage: String
//    let scalingFactor, recoveryTime, missingManaPCT, missingManaPCTMax: String
//
//    init(name: String, rDescription: String, readyMovementMultiplier: String, range: String, cooldown: String, resourceCost: String, castTime: String, baseDamage: String, scalingFactor: String, recoveryTime: String, missingManaPCT: String, missingManaPCTMax: String) {
//        self.name = name
//        self.rDescription = rDescription
//        self.readyMovementMultiplier = readyMovementMultiplier
//        self.range = range
//        self.cooldown = cooldown
//        self.resourceCost = resourceCost
//        self.castTime = castTime
//        self.baseDamage = baseDamage
//        self.scalingFactor = scalingFactor
//        self.recoveryTime = recoveryTime
//        self.missingManaPCT = missingManaPCT
//        self.missingManaPCTMax = missingManaPCTMax
//    }
//
//    init(belicaRAbility: BelicaRAbility) {
//        self.name = belicaRAbility.name
//        self.rDescription = belicaRAbility.rDescription
//        self.readyMovementMultiplier = belicaRAbility.readyMovementMultiplier
//        self.range = belicaRAbility.range
//        self.cooldown = belicaRAbility.cooldown
//        self.resourceCost = belicaRAbility.resourceCost
//        self.castTime = belicaRAbility.castTime
//        self.baseDamage = belicaRAbility.baseDamage
//        self.scalingFactor = belicaRAbility.scalingFactor
//        self.recoveryTime = belicaRAbility.recoveryTime
//        self.missingManaPCT = belicaRAbility.missingManaPCT
//        self.missingManaPCTMax = belicaRAbility.missingManaPCTMax
//    }
//}

extension Belica {
    
    var iconName: String {
        return "Belica_icon"
    }
    var bannerName: String {
        return "Belica_banner"
    }
    var eAbilityImageURL: String {
        return "https://api.playfault.com/imagecdn/abilities/LtBelica/E.png"
    }
    var lmbAbilityImageURL: String {
        return "https://api.playfault.com/imagecdn/abilities/LtBelica/LMB.png"
    }
    var pAbilityImageURL: String {
        return "https://api.playfault.com/imagecdn/abilities/LtBelica/P.png"
    }
    var qAbilityImageURL: String {
        return "https://api.playfault.com/imagecdn/abilities/LtBelica/Q.png"
    }
    var rAbilityImageURL: String {
        return "https://api.playfault.com/imagecdn/abilities/LtBelica/R.png"
    }
    var rmbAbilityImageURL: String {
        return "https://api.playfault.com/imagecdn/abilities/LtBelica/RMB.png"
    }
    
    var name: String {
        get {
            return HeroName.belica.rawValue
        }
    }
    
    func getAbilityImage(imageURL: String, completion: @escaping (UIImage?) -> ()) {
        if let imageURL = URL(string: imageURL) {
            FaultBuildHelper.shared.getData(from: imageURL, completion: { data, response, error in
                guard let data = data, error == nil else {
                    print("Error retrieving data from " + imageURL.absoluteString)
                    return
                    
                }
                print("Successfully retrieved data from " + imageURL.absoluteString)
                completion(UIImage(data: data))
            })
        }
    }
    
    //    func getIconName() -> String {
    //        return self.iconName
    //    }
    //
    //    func getBannerName() -> String {
    //        return self.bannerName
    //    }
    
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
    
    //    func getLMBAbilityDetails() -> String {
    //        return ""
    //    }
    
    func getPAbility() -> Ability {
        return self.pAbility
    }
    
    //    func getPAbilityDetails() -> String {
    //        return pAbility.pDescription
    //    }
    
    func getQAbility() -> Ability {
        return self.qAbility
    }
    
    //    func getQAbilityDetails() -> String {
    //        return ""
    //    }
    
    func getEAbility() -> Ability {
        return self.eAbility
    }
    
    //    func getEAbilityDetails() -> String {
    //        return ""
    //    }
    
    func getRAbility() -> Ability {
        return self.rAbility
    }
    
    //    func getRAbilityDetails() -> String {
    //        return ""
    //    }
    
    func getRMBAbility() -> Ability {
        return self.rmbAbility
    }
    
    //    func getRMBAbilityDetails() -> String {
    //        return ""
    //    }
}

extension BelicaPAbility{
    func getName() -> String {
        return self.name
    }
    
    func getDetails() -> String {
        return self.pDescription
    }
}

extension BelicaQAbility{
    func getName() -> String {
        return self.name
    }
    
    func getDetails() -> String {
        var details = ""
        details += self.qDescription != "" ? self.qDescription + "\n\n" : ""
        details += self.resourceCost != "" ? "Resource Cost: " + self.resourceCost + "\n" : ""
        details += self.baseDamage != "" ? "Base Damage: " + self.baseDamage + "\n" : ""
        details += self.range != "" ? "Range: " + self.range + "\n" : ""
        details += self.width != "" ? "Width: " + self.width + "\n" : ""
        details += self.height != "" ? "Height: " + self.height + "\n" : ""
        details += self.castTime != "" ? "Cast Time: " + self.castTime + "\n" : ""
        details += self.cooldown != "" ? "Cooldown: " + self.cooldown + "\n" : ""
        details += self.speed != "" ? "Speed: " + self.speed + "\n" : ""
        details += self.launchspeed != "" ? "Launch Speed: " + self.launchspeed + "\n" : ""
        details += self.scalingFactor != "" ? "Scaling Factor: " + self.scalingFactor + "\n" : ""
        details += self.duration != "" ? "Duration: " + self.duration + "\n" : ""
        return details
    }
}

extension BelicaEAbility{
    func getName() -> String {
        return self.name
    }
    
    func getDetails() -> String {
        var details = ""
        details += self.eDescription != "" ? self.eDescription + "\n\n" : ""
        details += self.resourceCost != "" ? "Resource Cost: " + self.resourceCost + "\n" : ""
        details += self.baseDamage != "" ? "Base Damage" + self.baseDamage + "\n" : ""
        details += self.range != "" ? "Range: " + self.range + "\n" : ""
        details += self.radius != "" ? "Radius: " + self.radius + "\n" : ""
        details += self.cooldown != "" ? "Cooldown: " + self.cooldown + "\n" : ""
        
        if let lifetime = self.lifetime {
            details += lifetime != "" ? "Lifetime: " + lifetime + "\n" : ""
        }
        
        return details
    }
}

extension BelicaRAbility{
    func getName() -> String {
        return self.name
    }
    
    func getDetails() -> String {
        var details = ""
        details += self.rDescription != "" ? self.rDescription + "\n\n" : ""
        details += self.resourceCost != "" ? "Resource Cost: " + self.resourceCost + "\n" : ""
        details += self.baseDamage != "" ? "Base Damage: " + self.baseDamage + "\n" : ""
        details += self.range != "" ? "Range: " + self.range + "\n" : ""
        details += self.castTime != "" ? "Cast Time: " + self.castTime + "\n" : ""
        details += self.recoveryTime != "" ? "Recovery Time: " + self.recoveryTime + "\n" : ""
        details += self.cooldown != "" ? "Cooldown" + self.cooldown + "\n" : ""
        details += self.missingManaPCT != "" ? "Missing Mana PCT: " + self.missingManaPCT + "\n" : ""
        details += self.missingManaPCTMax != "" ? "Missing Mana PCT Max: " + self.missingManaPCTMax + "\n" : ""
        details += self.scalingFactor != "" ? "Scaling Factor: " + self.scalingFactor + "\n" : ""
        return details
    }
}


