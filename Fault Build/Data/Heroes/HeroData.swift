//
//  HeroData.swift
//  Fault Build
//
//  Created by Zane on 8/20/20.
//  Copyright © 2020 JusDev Studios. All rights reserved.
//

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let heroData = try? newJSONDecoder().decode(HeroData.self, from: jsonData)
/*
import Foundation

// MARK: - HeroDatum
struct HeroDatum: Codable {
    let info: Info
    let health, healthPerLevel: Int
    let healthRegen, healthRegenPerLevel: Double
    let mana, manaPerLevel: Int
    let manaRegen, manaRegenPerLevel: Double
    let physicalArmor: Int
    let physicalArmorPerLevel, energyArmor, energyArmorPerLevel: Double
    let movespeed: Int
    let lmb: Lmb
    let rmb, q, e, r: [String: String]
    let p: P
}

// MARK: - Info
struct Info: Codable {
    let basicRange: BasicRange
    let niche, role: String
    let damageType: DamageType
    let infoDescription: String

    enum CodingKeys: String, CodingKey {
        case basicRange, niche, role, damageType
        case infoDescription = "description"
    }
}

enum BasicRange: String, Codable {
    case melee = "Melee"
    case ranged = "Ranged"
}

enum DamageType: String, Codable {
    case energy = "Energy"
    case physical = "Physical"
}

// MARK: - Lmb
struct Lmb: Codable {
    let name, lmbDescription: String
    let cooldown: Double
    let range, physicalDamage, energyDamage: Int
    let attackSpeedPerLevel, adaptiveDamagePerLevel: Double
    let scalingFactor: String

    enum CodingKeys: String, CodingKey {
        case name
        case lmbDescription = "description"
        case cooldown, range, physicalDamage, energyDamage, attackSpeedPerLevel, adaptiveDamagePerLevel, scalingFactor
    }
}

// MARK: - P
struct P: Codable {
    let name, pDescription: String
    let readyMovementMultiplier, baseDamage, scalingFactor, lifesteal: String?
    let bBADmgPerSMHP, bBADmgPerTMHP, castMovementMultiplier, baseHealthonMinions: String?
    let baseHealthonHeroes, duration, triggerCooldown, movementSlow: String?
    let slowDuration, triggerWindow, lifetime, cooldown: String?
    let pCDRedpBA, bonusHPRegen, maxStackDuration, maxStacks: String?
    let aoeLifesteal, triggerRadius, triggerHealth, movementSpeed: String?
    let maxDivMarkStacks, rootperStack, dmgPerStack, markDuration: String?
    let onTargetCooldown, mRegenperMissMana, stacksperMinionKill, stacksperHeroRaptorOPKill: String?
    let healthPerStack, siphonDamagePerStack, stackstoreachTier, bonusHPatEachTier: String?
    let bonusZapPoweratEachTier, bonusBADmgpStack, stackDurationAdditive, eApStack: String?
    let pStackDuration, cCReduction, minStacksforCCR, moveSpeedpSt: String?

    enum CodingKeys: String, CodingKey {
        case name
        case pDescription = "description"
        case readyMovementMultiplier, baseDamage, scalingFactor, lifesteal
        case bBADmgPerSMHP = "bBADmgPer%SMHP"
        case bBADmgPerTMHP = "bBADmgPer%TMHP"
        case castMovementMultiplier
        case baseHealthonMinions = "%BaseHealthonMinions"
        case baseHealthonHeroes = "%BaseHealthonHeroes"
        case duration, triggerCooldown, movementSlow, slowDuration, triggerWindow, lifetime, cooldown, pCDRedpBA, bonusHPRegen, maxStackDuration, maxStacks
        case aoeLifesteal = "%AOELifesteal"
        case triggerRadius
        case triggerHealth = "triggerHealth%"
        case movementSpeed, maxDivMarkStacks, rootperStack, dmgPerStack, markDuration, onTargetCooldown, mRegenperMissMana, stacksperMinionKill, stacksperHeroRaptorOPKill, healthPerStack, siphonDamagePerStack, stackstoreachTier, bonusHPatEachTier, bonusZapPoweratEachTier, bonusBADmgpStack, stackDurationAdditive, eApStack, pStackDuration, cCReduction, minStacksforCCR
        case moveSpeedpSt = "%MoveSpeedpSt"
    }
}

typealias HeroData = [HeroDatum]
*/
//From JSON
/*
 [
   {
     "info": {
       "basicRange": "Ranged",
       "niche": "Burst",
       "role": "Mage",
       "damageType": "Energy",
       "description": "Lt Belica is a ranged burst mage who excels at controlling and punishing enemies who frequently use abilities. As a police woman, she utilizes a trusty drone to empower her attacks and punish her enemies by deploying it on the battlefield to attack those that use abilities. Seismic Assault unleashes a rolling wave of energy that damages and disrupts any target caught in its wake, while Void Bomb utilizes powerful technology to damage units and replenish some of Lt Belica's mana. When facing really tough oponents, no foe yet has been able to handle the full might of her Neural Disruptor, which annihilates enemies with a massive energy pulse that deals massive damage. Fight foes that like to test your capabilities with their abilities and unleash the full might of the law on the battlefield."
     },
     "health": 530,
     "healthPerLevel": 88,
     "healthRegen": 1.2,
     "healthRegenPerLevel": 0.11,
     "mana": 400,
     "manaPerLevel": 25,
     "manaRegen": 1.45,
     "manaRegenPerLevel": 0.13,
     "physicalArmor": 20,
     "physicalArmorPerLevel": 3.25,
     "energyArmor": 29.5,
     "energyArmorPerLevel": 0.5,
     "movespeed": 575,
     "lmb": {
       "name": "Burst Assault",
       "description": "B150 Assault Rifle. .",
       "cooldown": 1.3,
       "range": 1350,
       "physicalDamage": 52,
       "energyDamage": 0,
       "attackSpeedPerLevel": 2,
       "adaptiveDamagePerLevel": 2.6,
       "scalingFactor": "1"
     },
     "rmb": {
       "name": "Void Bomb",
       "description": "Lt Belica summons a bomb on the ground up to 1800 units away that explodes in a 400 unit radius after a 1.1 second delay, dealing 80/130/180/230/280 plus 100.00% energy power as energy damage. Restores 7 mana for every unit hit.",
       "range": "1800",
       "radius": "400",
       "cooldown": "10/9/8/7/6",
       "resourceCost": "60/70/80/90/100",
       "delay": "1.1",
       "manaperunithit": "7",
       "baseDamage": "80/130/180/230/280",
       "scalingFactor": "1"
     },
     "q": {
       "name": "Seismic Assault",
       "description": "Lt Belica slams the ground, sending forth a wave of seismic energy that knocks up and stuns units for 0.5/0.7/0.9/1.1/1.3 seconds. Deals 60/100/140/180/220 plus 80.00% energy power as energy damage.",
       "level": "1/2/3/4/4",
       "cooldown": "12",
       "resourceCost": "70/80/90/100/110",
       "castTime": "0.3",
       "range": "1600",
       "width": "185",
       "speed": "2000",
       "height": "260",
       "launchspeed": "700",
       "baseDamage": "60/100/140/180/220",
       "scalingFactor": "0.8",
       "duration": "0.5/0.7/0.9/1.1/1.3"
     },
     "e": {
       "name": "Command Drone",
       "description": "Lt Belica can command her Police Drone to defend a 1500 unit radius area up to 1800 units away, attacking enemy heroes that use abilities for 4 seconds. Deals 25/45/65/85/105 plus 25.00% energy power as energy damage per attack.",
       "xLevel": "1/2/3/4/5",
       "range": "1800",
       "radius": "1500",
       "cooldown": "24/21/18/15/12",
       "resourceCost": "75",
       "lifetime": "4",
       "baseDamage": "25/45/65/85/105",
       "scalingFactor": "0.25"
     },
     "r": {
       "name": "Neural Disruptor",
       "description": "Lt Belica pulls out her Disruptor Pistol and blasts a target up to 1600 units away, dealing 180/240/300 plus 80.00% energy power as energy damage, plus 1.00% bonus damage per 1.00% missing mana of the target.",
       "readyMovementMultiplier": "1",
       "range": "1600",
       "cooldown": "100/90/80",
       "resourceCost": "100/110/120",
       "castTime": "0.8",
       "baseDamage": "180/240/300",
       "scalingFactor": "0.8",
       "recoveryTime": "0.6",
       "missingManaPCT": "0.01",
       "missingManaPCTMax": "1"
     },
     "p": {
       "name": "Void Drone",
       "description": "Lt Belica has a trusty Police Drone following her that attacks her targets whenever Lt Belica lands a successful basic attack. Deals 8/16/24/32 plus 15.00% energy power as energy damage.",
       "readyMovementMultiplier": "1",
       "baseDamage": "8/16/24/32",
       "scalingFactor": "0.15"
     }
   },
   {
     "info": {
       "basicRange": "Melee",
       "niche": "Diver",
       "role": "Fighter",
       "damageType": "Physical",
       "description": "Boris is a melee fighter that scavenges the battlefield and his prey to create his own opportunities. Boris is the result of terrible experiments, and was designed to be the ultimate hunter with abnormally strong senses. Boris is an expert Blood Tracker and can smell the blood of weakened enemies from unbelievable distances, allowing him to engage his prey with ferocious speed and surprise. When prey are within a short distance, Boris can close the gap with Maul, swiping his massive paws to inflict devastating wounds on any who get in his way. He was also designed to be an expert scavenger, extracting valuable resources from the battlefield to empower him when times are tough. If a victim is proving exceptionally slippery, Boris utilizes his rockets to slam into his opponent and secure the kill."
     },
     "health": 575,
     "healthPerLevel": 89,
     "healthRegen": 1.3,
     "healthRegenPerLevel": 0.125,
     "mana": 310,
     "manaPerLevel": 40,
     "manaRegen": 1.5,
     "manaRegenPerLevel": 0.13,
     "physicalArmor": 34,
     "physicalArmorPerLevel": 3.5,
     "energyArmor": 32,
     "energyArmorPerLevel": 1.25,
     "movespeed": 555,
     "lmb": {
       "name": "Feral Claw",
       "description": "",
       "cooldown": 1.35,
       "range": 330,
       "physicalDamage": 68,
       "energyDamage": 0,
       "attackSpeedPerLevel": 3,
       "adaptiveDamagePerLevel": 3.75,
       "scalingFactor": "1"
     },
     "rmb": {
       "name": "Maul",
       "description": "Boris leaps forward 550 units, passing through units and casting two basic attacks dealing 75.0/90.0/105.0/120.0/135.0% physical damage each to all units along the path. Applies on hit effects. Cannot crit. Boris is unstoppable for the duration.",
       "leapDistance": "550",
       "duration": "0.6",
       "cooldown": "10",
       "resourceCost": "50",
       "baseBADamage": "0.75/0.9/1.05/1.2/1.35"
     },
     "q": {
       "name": "Blood Tracker",
       "description": "Passive: Boris senses the direction of all enemy heroes that are below 50.00% max health anywhere on the map. Active: sense the nearest enemy hero within 4000 units and if successful, gain 50.0/62.5/75.0/87.5/100.0% attack speed when the marked target is in melee range. Gain 20.0/24.0/28.0/32.0/36.0% movement speed when moving towards the target for 12 seconds.",
       "triggerPCTMaxHealth": "0.5",
       "castTime": "0.5",
       "range": "4000",
       "cooldown": "120/105/90/75/60",
       "resourceCost": "80/90/100/110/120",
       "duration": "12",
       "attackSpeedBonus": "0.5/0.625/0.75/0.875/1",
       "movementSpeedBonus": "0.2/0.24/0.28/0.32/0.36"
     },
     "e": {
       "name": "Bear Necessities",
       "description": "Passive: Units drop energy that Boris collects for his four canisters. Energy lasts on the ground for 30 seconds. Heroes, Raptors, and Prime Helix grant 20 energy. Minions grant 2. Each canister contains 25 energy. Active: Boris injects all full canisters. One canister enhances Blood Lust healing by a factor of 1.4/1.8/2.2/2.6/3, two enhances Blood Lust damage by 1.4/1.8/2.2/2.6/3, three grants movement speed, and four grants unstoppable for 2/2.4/2.8/3.2/3.6 seconds. Lasts 10 seconds.",
       "rateScale": "1.6",
       "energyperUnit": "2",
       "energyperHero": "20",
       "energyperCanister": "25",
       "maxTotalEnergy": "100",
       "cooldown": "10",
       "resourceCost": "50/55/60/65/70",
       "animationRateScale": "1.3",
       "bLHealFactor": "1.4/1.8/2.2/2.6/3",
       "bLHealDmgFactor": "1.2/1.4/1.6/1.8/2",
       "movementSpeedBonus": "0.1/0.13/0.16/0.19/0.22",
       "buffDuration": "10",
       "unstoppableDuration": "2/2.4/2.8/3.2/3.6",
       "maxDurationOnGround": "30"
     },
     "r": {
       "name": "Rocket Slam",
       "description": "Boris selects an enemy hero and launches straight into the air. He fires his rockets to come crashing down on the target dealing 200/250/300 plus 80.00% physical power as physical damage. Deals 0.55% bonus damage per 1% of the target's missing maximum health. Executes target with 10.0/15.0/20.0% or less maximum health.",
       "range": "1150",
       "cooldown": "90/80/70",
       "resourceCost": "90/105/110",
       "movementDuration": "1.8",
       "baseDamage": "200/250/300",
       "scalingFactor": "0.8",
       "%BDmgPTrgt%MissHP": "0.0055",
       "%HPExeThresh": "0.1/0.15/0.2",
       "recoveryTime": "0.4"
     },
     "p": {
       "name": "Blood Lust",
       "description": "Boris heals for 2.0/4.0/6.0/8.0% of basic attack damage. Basic attacks deal 0.1/0.2/0.3/0.4% and 0.1/0.2/0.3/0.4% more damage per 1% max health you and your target are missing respectively.",
       "lifesteal": "0.02/0.04/0.06/0.08",
       "bBADmgPer%SMHP": "0.001/0.002/0.003/0.004",
       "bBADmgPer%TMHP": "0.001/0.002/0.003/0.004"
     }
   },
   {
     "info": {
       "basicRange": "Melee",
       "niche": "Burst",
       "role": "Assassin",
       "damageType": "Energy",
       "description": "Countess is a melee burst assassin who drains the blood from her slain enemies and deals massive ability damage. She sustains herself through her prey, using Blade Siphon to empower her vampiric nature and mark enemies for slaughter. Countess can slip through the shadows, appearing amongst her prey with ease and ready to unleash a torrent of energy with Dark Tide. When she is truly in need of a kill, her true powers appear, allowing her to Feast upon a target, dealing massive amounts of damage and rendering the target paralized from fear and terror. Prey upon the weak and vulnerable from the shadows and rip into your enemies when they least expect it."
     },
     "health": 575,
     "healthPerLevel": 90,
     "healthRegen": 1.2,
     "healthRegenPerLevel": 0.115,
     "mana": 360,
     "manaPerLevel": 50,
     "manaRegen": 1.4,
     "manaRegenPerLevel": 0.14,
     "physicalArmor": 30,
     "physicalArmorPerLevel": 3.1,
     "energyArmor": 31,
     "energyArmorPerLevel": 1.1,
     "movespeed": 570,
     "lmb": {
       "name": "Slash",
       "description": "",
       "cooldown": 1.2,
       "range": 300,
       "physicalDamage": 61,
       "energyDamage": 0,
       "attackSpeedPerLevel": 2.8,
       "adaptiveDamagePerLevel": 3,
       "scalingFactor": "1"
     },
     "rmb": {
       "name": "Blade Siphon",
       "description": "Countess spins her blades around her, dealing 70/110/150/190/230 plus 75.00% energy power as energy damage to enemies within 350 units and marking them with Vampires Touch for 6 seconds. Enemies that die to Blade Siphon proc a 150.00% effect of Dark Drain, while enemies that die with Vampires Touch active gain 50.00% effect of Dark Drain. Additionally, Countess's next ability against targets with Vampires Touch deals bonus damage.",
       "cooldown": "8",
       "resourceCost": "55/65/75/85/95",
       "radius": "350",
       "height": "400",
       "%BonusToPassive": "1.5",
       "baseDamage": "70/110/150/190/230",
       "scalingFactor": "0.75",
       "%ofPassiveEffect": "0.5",
       "dmgBonusQ": "2",
       "dmgBonusE": "1.15",
       "dmgBonusR": "1.25",
       "duration": "6"
     },
     "q": {
       "name": "Shadow Slip",
       "description": "Countess jumps to targetted unit, dealing 55/75/95/115/135 plus 80.00% energy power as energy damage and slowing by 38.0/41.0/44.0/47.0/50.0% for 1.5 seconds. Executes lane minions but not jungle minions. Can be recast within 4 seconds to jump back to initial cast position.",
       "range": "1100",
       "cooldown": "13/12/11/10/9",
       "resourceCost": "80",
       "baseDamage": "55/75/95/115/135",
       "scalingFactor": "0.8",
       "slow": "0.38/0.41/0.44/0.47/0.5",
       "slowDuration": "1.5",
       "recastDelay": "1",
       "recastTimeout": "4"
     },
     "e": {
       "name": "Dark Tide",
       "description": "Countess sends forth a wave of dark energy that deals 90/120/150/180/210 plus 110.00% energy power as energy damage to units in a 650 unit line.",
       "readyMovementMultiplier": "0.9",
       "cooldown": "11/10.25/9.5/8.75/8",
       "resourceCost": "60/70/80/90/100",
       "width": "200",
       "height": "400",
       "speed": "1000",
       "range": "650",
       "baseDamage": "90/120/150/180/210",
       "scalingFactor": "1.1",
       "recoveryMovementMultiplier": "0.5"
     },
     "r": {
       "name": "Feast",
       "description": "Countess leaps to a target up to 350 units away, suppressing them and dealing 160/240/320 plus 160.00% energy power as energy damage.",
       "range": "350",
       "cooldown": "90/80/70",
       "resourceCost": "100",
       "channelDuration": "1",
       "duration": "1.5",
       "baseDamage": "160/240/320",
       "scalingFactor": "1.6"
     },
     "p": {
       "name": "Dark Drain",
       "description": "Countess drains the blood of her slain enemies, regenerating 2.2/2.9/3.6/4.3% of her max health from minions and 9.0/13.0/17.0/21.0% of her max health from heroes over 2 seconds.",
       "castMovementMultiplier": "1",
       "%BaseHealthonMinions": "0.022/0.029/0.036/0.043",
       "%BaseHealthonHeroes": "0.09/0.13/0.17/0.21",
       "duration": "2"
     }
   },
   {
     "info": {
       "basicRange": "Ranged",
       "niche": "Burst",
       "role": "Mage",
       "damageType": "Energy",
       "description": "Gideon is a ranged combo mage that excels at weaving his spells together into massively destructive combinations. Damaging opponents with his abilities enables Gideon to summon even more power from the void, unleashing more and more deadly spells upon his foes. Look for opportunities to unleash Gideon's ability combo when you know the time is right, and use his Torn Space to get back to safety if it isn't. Cosmic Rift rains destruction from afar, while Void Breach obliterates enemies up close, giving Gideon the potential to be dangerous from any range. Finally, no enemy will be able to survive Gideon's ultimate ability Black Hole, when, if used in conjunction with allied abilities at the perfect moment, will remove any and all enemies from the known universe."
     },
     "health": 550,
     "healthPerLevel": 92,
     "healthRegen": 1.3,
     "healthRegenPerLevel": 0.12,
     "mana": 430,
     "manaPerLevel": 30,
     "manaRegen": 1.5,
     "manaRegenPerLevel": 0.13,
     "physicalArmor": 24,
     "physicalArmorPerLevel": 3.5,
     "energyArmor": 30,
     "energyArmorPerLevel": 0.5,
     "movespeed": 565,
     "lmb": {
       "name": "Void Blast",
       "description": "Gideon summons void energy to blast at his opponents, dealing .",
       "cooldown": 1.3,
       "range": 1350,
       "physicalDamage": 60,
       "energyDamage": 0,
       "attackSpeedPerLevel": 2,
       "adaptiveDamagePerLevel": 2.5,
       "scalingFactor": "1"
     },
     "rmb": {
       "name": "Void Breach",
       "description": "Gideon summons a comet that travels up to 1900 units, piercing through minions and exploding on terrain, enemy heroes, and when reaching max range. Deals 115/155/195/235/275 plus 120.00% energy power as Energy Damage in a 200 unit area. Deals 50.00% damage against minions.",
       "cooldown": "12/11/10/9/8",
       "resourceCost": "75/85/95/105/115",
       "castTime": "0.5",
       "speed": "3000",
       "projectileRadius": "50",
       "maxRange": "1900",
       "radius": "200",
       "baseDamage": "115/155/195/235/275",
       "scalingFactor": "1.2",
       "recoveryTime": "0.3",
       "minionDmgModifier": "0.5"
     },
     "q": {
       "name": "Cosmic Rift",
       "description": "Gideon summons a meteor through a cosmic rift up to 1750 units away, dealing 85/130/175/220/265 plus 100.00% energy power as energy damage in a 350 unit radius.",
       "range": "1750",
       "radius": "350",
       "cooldown": "8",
       "resourceCost": "60/70/80/90/100",
       "castTime": "0.3",
       "castMovementMultiplier": "0.9",
       "baseDamage": "85/130/175/220/265",
       "scalingFactor": "1",
       "recoveryTime": "0.3"
     },
     "e": {
       "name": "Torn Space",
       "description": "Gideon opens a portal, allowing him to teleport 900/1000/1100/1200/1300 units away. Allies can use his portals to teleport the same distance.",
       "distance": "900/1000/1100/1200/1300",
       "cooldown": "18/16/14/12/10",
       "resourceCost": "60/70/80/90/100",
       "castTime": "0.5",
       "radius": "40",
       "height": "150",
       "lifetime": "6"
     },
     "r": {
       "name": "Black Hole",
       "description": "Gideon channels a black hole at his current location that applies a 460 unit pull to nearby enemies towards the center, dealing 45/70/95 plus 22.00% energy power as energy damage every 0.5 seconds for 3.5 seconds. Gain a shield based on the amount of enemies heroes caught in the Black Hole.",
       "cooldown": "110/90/70",
       "resourceCost": "125/175/225",
       "height": "1000",
       "radius": "850",
       "duration": "3.5",
       "baseAmount": "25",
       "enemyFactor": "2.55",
       "shieldDuration": "4.5",
       "shieldDecayDelay": "1",
       "baseDamage": "45/70/95",
       "scalingFactor": "0.22",
       "rate": "0.5",
       "pull": "460"
     },
     "p": {
       "name": "Cosmic Progression",
       "description": "Every 36/32/28/24 seconds, when Gideon's next basic ability hits an enemy hero it applies a  decaying 16.0/20.0/24.0/28.0% slow on enemy heroes hit for 2 seconds. If successful, hitting another enemy hero with a basic ability within 4 seconds allows Gideon to use a basic ability that is currently on cooldown.",
       "triggerCooldown": "36/32/28/24",
       "movementSlow": "0.16/0.2/0.24/0.28",
       "slowDuration": "2",
       "triggerWindow": "4",
       "lifetime": "4"
     }
   },
   {
     "info": {
       "basicRange": "Melee",
       "niche": "Diver",
       "role": "Bruiser",
       "damageType": "Physical",
       "description": "Greystone is a melee diver who excels at harassing mobile opponents. As an incredibly durable and skilled swordsman, Greystone can deflect incoming attacks with his shield and skillfully disarm his opponents. Greystone has been blessed with the chance to cheat death, allowing him to punish his enemies with two lives and two chances of overwhelming his opponents. In team fights, dive the enemy backline with Assault the Gates and force enemies to deal with you, allowing your allies to effortlessly clean up the battlefield."
     },
     "health": 530,
     "healthPerLevel": 85,
     "healthRegen": 1.3,
     "healthRegenPerLevel": 0.12,
     "mana": 300,
     "manaPerLevel": 40,
     "manaRegen": 1.3,
     "manaRegenPerLevel": 0.1,
     "physicalArmor": 27,
     "physicalArmorPerLevel": 3,
     "energyArmor": 28,
     "energyArmorPerLevel": 0.5,
     "movespeed": 580,
     "lmb": {
       "name": "Slash",
       "description": "Greystone swings his sword at his enemies, dealing .",
       "cooldown": 1.2,
       "range": 300,
       "physicalDamage": 65,
       "energyDamage": 0,
       "attackSpeedPerLevel": 3,
       "adaptiveDamagePerLevel": 3.5,
       "scalingFactor": "1"
     },
     "rmb": {
       "name": "Assault the Gates",
       "description": "Greystone leaps to a target location up to 1200 units away, dealing 60/80/100/120/140 plus 40.00% physical power as physical damage in a 250 unit radius when he lands. Damaging an enemy hero within a 125 unit inner radius deals 30.00% bonus physical damage.",
       "range": "1200",
       "outerRadius": "250",
       "innerRadius": "125",
       "cooldown": "10",
       "resourceCost": "60",
       "time": "0.8",
       "baseDamage": "60/80/100/120/140",
       "scalingFactor": "0.4",
       "innerRadiusDmgBonus": "0.3",
       "recoveryTime": "0.3"
     },
     "q": {
       "name": "Fiery Swords",
       "description": "Greystone summons a whirlwind of fiery swords that deals 10/14.5/19/23.5/28 plus 3.00% physical power as physical damage every 0.5 seconds to enemies within 450 units, lasting 5 seconds. Damaging heroes counts as 0.25 attacks for Greystone's Deflect ability. Can only occur once per tick rate.",
       "castTime": "0.5",
       "cooldown": "12/11.25/10.5/9.75/9",
       "resourceCost": "60/65/70/75/80",
       "height": "200",
       "radius": "450",
       "lifetime": "5",
       "pProcpTH": "0.25",
       "baseDamage": "10/14.5/19/23.5/28",
       "scalingFactor": "0.03",
       "rate": "0.5"
     },
     "e": {
       "name": "Champion's Courage",
       "description": "Greystone bashes his shield with his sword, causing all units in a 500 unit long wedge in front of him to take 60/100/140/180/180 plus 30.00% physical power as physical damage. Enemy heroes are disarmed for 1/1.2/1.4/1.6/1.6 seconds. Disarm prevents the use of basic attacks.",
       "cooldown": "24/21/18/15/12",
       "resourceCost": "60/70/80/90/100",
       "rateScale": "1.666666",
       "castTime": "0.25",
       "range": "500",
       "angle": "50",
       "height": "250",
       "baseDamage": "60/100/140/180/180",
       "scalingFactor": "0.3",
       "disarmDuration": "1/1.2/1.4/1.6/1.6",
       "recovery": "0.25"
     },
     "r": {
       "name": "Heroic Rebirth",
       "description": "Upon death, Greystone's spirit returns to the heavens, applying a 50.00% slow to all units within 900 units for 3 seconds. Greystone comes crashing back down after 2.5 seconds, gaining 50.0/60.0/70.0% base health and 50.0/60.0/70.0% base mana and dealing 180/260/340 plus 160.00% energy power as energy damage in a 450 unit radius.",
       "cooldown": "180/130/80",
       "slowRadius": "900",
       "slowHeight": "300",
       "slow": "0.5",
       "slowDuration": "3",
       "radius": "450",
       "maxRangefromDeath": "900",
       "height": "300",
       "tarConTime": "2.5",
       "travelTime": "0.5",
       "delay": "3",
       "pCTBaseHPRes": "0.5/0.6/0.7",
       "pCTBaseManaRes": "0.5/0.6/0.7",
       "baseDamage": "180/260/340",
       "scalingFactor": "1.6"
     },
     "p": {
       "name": "Deflect",
       "description": "Every 12/10.5/9/7.5 seconds, Greystone can deflect a basic attack. The cooldown is reduced by 0.75 seconds whenever Greystone lands a basic attack.",
       "cooldown": "12/10.5/9/7.5",
       "pCDRedpBA": "0.75"
     }
   },
   {
     "info": {
       "basicRange": "Melee",
       "niche": "Diver",
       "role": "Fighter",
       "damageType": "Physical",
       "description": "Khaimera is a melee fighter and a powerful kamakaze duelist. Possessed by a spirit, Khaimera excels at single target damage and building a regenerative fervor through combat. Ambush allows him to quickly leep onto his target to close the gap and secure a kill, while his Unleash ability utilizes the power of the spirit to grant him a flurry of relentless attacks. His ultimate ability Cull will channel the full power the spirit, devastating his target with damage and knocking nearby enemies away, thereby isolating his victim. Look for opportunities to ambush enemies that are either out of position, vulnerable in nature or who are low on health."
     },
     "health": 570,
     "healthPerLevel": 87,
     "healthRegen": 1.4,
     "healthRegenPerLevel": 0.12,
     "mana": 300,
     "manaPerLevel": 38,
     "manaRegen": 1.5,
     "manaRegenPerLevel": 0.12,
     "physicalArmor": 32,
     "physicalArmorPerLevel": 3.5,
     "energyArmor": 30,
     "energyArmorPerLevel": 1.25,
     "movespeed": 575,
     "lmb": {
       "name": "Hack",
       "description": "",
       "cooldown": 1.2,
       "range": 300,
       "physicalDamage": 62,
       "energyDamage": 0,
       "attackSpeedPerLevel": 3,
       "adaptiveDamagePerLevel": 3,
       "scalingFactor": "1"
     },
     "rmb": {
       "name": "Ambush",
       "description": "Khaimera leaps to a targeted enemy hero up to 900 units away, dealing 55/65/75/85/95 plus 40.00% physical power as energy damage and applying a 30.00% slow. Khaimera also gains 3 stacks of Spirit Regeneration.",
       "range": "900",
       "cooldown": "10.5/9.5/8.5/7.5/6.5",
       "resourceCost": "50",
       "effectDelay": "0.6",
       "additionalStacks": "3",
       "baseDamage": "55/65/75/85/95",
       "scalingFactor": "0.4",
       "slow": "0.3",
       "duration": "2"
     },
     "q": {
       "name": "Unleash",
       "description": "Khaimera's inner beast is unleashed, causing basic attack speed to be maxed for the next 5 attacks within 3 seconds. These basic attacks deal 55.0/62.5/70.0/77.5/85.0% of their normal damage.",
       "cooldown": "9",
       "resourceCost": "40/45/50/55/60",
       "bAScalingFactor": "0.55/0.625/0.7/0.775/0.85",
       "maxNumberAttacks": "5",
       "maxDuration": "3"
     },
     "e": {
       "name": "Berserker's Spirit",
       "description": "Khaimera's inner Spirit is enraged, granting Khaimera 4/7/10/13/16 stacks of Spirit Regeneration if he has none. If Khaimera has stacks, the Spirit consumes them, granting Khaimera 0.9/1.3/1.7/2.1/2.5 bonus basic attack damage per Spirit Regeneration stack for 6 seconds.",
       "readyMovementMultiplier": "1",
       "cooldown": "24/21/18/15/12",
       "resourceCost": "80/85/90/95/100",
       "castAnimationTime1": "1.5",
       "castMovementMultiplier": "1",
       "grantStacksEffectDelay": "1.5",
       "passiveStacks": "4/7/10/13/16",
       "bonusBaseBAD": "0.9/1.3/1.7/2.1/2.5",
       "bBBADDuration": "6"
     },
     "r": {
       "name": "Beastial Wrath",
       "description": "Khaimera suppresses an enemy hero within 350 units and deals 250/350/450 plus 80.00% physical power as energy damage. Displaces enemy heroes within 500 units. Khaimera is granted 6 stacks of Spirit Regeneration upon activation.",
       "range": "350",
       "cooldown": "90/70/50",
       "resourceCost": "75",
       "channelDuration": "0.625",
       "passiveStacks": "6",
       "supression": "1",
       "baseDamage": "250/350/450",
       "scalingFactor": "0.8",
       "effect2Delay": "0.625",
       "radius": "500",
       "knockbackSpeed": "1200"
     },
     "p": {
       "name": "Spirit Regeneration",
       "description": "Khaimera gains stacks of 0.9/1.3/1.7/2.1 health regen each time he lands a basic attack. Stacks up to 20 times. Lasts 1.5 seconds.",
       "bonusHPRegen": "0.9/1.3/1.7/2.1",
       "maxStackDuration": "1.5",
       "maxStacks": "20"
     }
   },
   {
     "info": {
       "basicRange": "Melee",
       "niche": "Diver",
       "role": "Bruiser",
       "damageType": "Physical",
       "description": "Kwang is a melee bruiser who excels at pinning down a target and initiating a fight. He channels an emmense source of power through his sword, which is rumoured to be an ancient weapon weilded by near omnipotent beings. Judgement of the Heavens can tether a foe in place, allowing Kwang and his allies to get close and personal, while his Power of the Heavens and Light of Heavens channels bolts of lightning to damage anyone caught in their path and protect Kwang with static energy. The full might of Kwang's legendary sword is channeled through Fury of the Heavens, teleporting Kwang to his sword and unleashing a storm of furious energy upon the battlefield. Make sure to isolate and pin down vulnerable targets to prepare Kwang and his team for total domination."
     },
     "health": 545,
     "healthPerLevel": 85,
     "healthRegen": 1.2,
     "healthRegenPerLevel": 0.13,
     "mana": 320,
     "manaPerLevel": 40,
     "manaRegen": 1.5,
     "manaRegenPerLevel": 0.15,
     "physicalArmor": 34,
     "physicalArmorPerLevel": 3,
     "energyArmor": 32,
     "energyArmorPerLevel": 1.25,
     "movespeed": 590,
     "lmb": {
       "name": "Slice",
       "description": "",
       "cooldown": 1.2,
       "range": 300,
       "physicalDamage": 59,
       "energyDamage": 0,
       "attackSpeedPerLevel": 2.5,
       "adaptiveDamagePerLevel": 2.9,
       "scalingFactor": "1"
     },
     "rmb": {
       "name": "Light of the Heavens",
       "description": "Heavenly energy strikes Kwang’s sword if it is not in his hands, dealing 90/125/160/195/230 plus 60.00% energy power as energy damage in a 260 unit radius. If Kwang is wielding the sword, Kwang deals 50/80/110/140/170 plus 30.00% energy power as energy damage in a 400 unit radius around him and is granted a 60/105/150/195/240 plus 10.00% bonus health shield that lasts 2.5 seconds.",
       "cooldown": "20/18/16/14/12",
       "resourceCost": "65/75/85/95/105",
       "aOERadius": "260",
       "height": "800",
       "lightningDamage": "90/125/160/195/230",
       "lightScFact": "0.6",
       "recoveryTime": "0.125",
       "shieldAmount": "60/105/150/195/240",
       "bHPScalingFactor": "0.1",
       "shieldDuration": "2.5",
       "shieldDamage": "50/80/110/140/170",
       "shieldScalingFactor": "0.3",
       "shDmgRadius": "400"
     },
     "q": {
       "name": "Judgement of the Heavens",
       "description": "Kwang throws his sword up to 1650 units away, dealing 75/90/105/120/135 plus 60.00% energy power as energy damage and tethers enemies in a 260 unit radius for 2/2.2/2.4/2.6/2.8 seconds. Kwang can recall his sword in order to basic attack.",
       "range": "1650",
       "radius": "260",
       "cooldown": "14/13.25/12.5/11.75/11",
       "resourceCost": "70",
       "casttime": "0.2",
       "effectDelay": "0.35",
       "height": "400",
       "baseDamage": "75/90/105/120/135",
       "scalingFactor": "0.6",
       "duration": "2/2.2/2.4/2.6/2.8",
       "recoveryTime": "0.125"
     },
     "e": {
       "name": "Power of the Heavens",
       "description": "Kwang thrusts his sword forward and summons bolts of lightning in a 650 unit long line in front of him, dealing 80/120/160/200/240 plus 70.00% energy power as energy damage. If his sword is on the battlefield, lightning erupts from his sword up to 2000 units back towards his current position, damaging units caught within the area of effect and his sword's radius. Power of the Heavens shreds 12.0/14.0/16.0/18.0/20.0% energy armour on targets hit.",
       "cooldown": "18/16/14/12/10",
       "resourceCost": "60/70/80/90/100",
       "castTime": "0.75",
       "movementPenalty": "0.8",
       "swordRange": "650",
       "withoutSwRange": "2000",
       "width": "200",
       "baseDamage": "80/120/160/200/240",
       "scalingFactor": "0.7",
       "enArShred": "0.12/0.14/0.16/0.18/0.2",
       "shredDuration": "4",
       "recoveryTime": "0.2"
     },
     "r": {
       "name": "Fury of the Heavens",
       "description": "After Kwang charges up heavenly energy for 0.75 seconds, he teleports to his sword, dealing 150/240/330 plus 100.00% energy power and 40.00% physical power as energy damage and slowing enemies by 40.00% for 2.5 seconds within a 600 unit radius. Does not teleport if holding the sword.",
       "cooldown": "85/75/65",
       "resourceCost": "100",
       "castTime": "0.75",
       "radius": "600",
       "baseDamage": "150/240/330",
       "zScalingFactor": "1",
       "pScalingFactor": "0.4",
       "slow": "0.4",
       "slowDuration": "2.5",
       "recoveryTime": "0.125"
     },
     "p": {
       "name": "Gift of the Heavens",
       "description": "Kwang is blessed with  4.0/8.0/12.0/16.0% physical and energy lifesteal. Is only 30.00% effective on area of effect damage.",
       "%AOELifesteal": "0.3"
     }
   },
   {
     "info": {
       "basicRange": "Ranged",
       "niche": "Utility",
       "role": "Carry",
       "damageType": "Physical",
       "description": "Murdock is a ranged carry who relies on his basic attacks to deal high single target damage. Murdock's abilities offer different types of utility and allow him to control the battlefield to his advantage. Murdock uses the Long Arm of the Law to pick off low-health targets and make sure no one can run from the law. Late game, positioning is key as Murdock enters the fight with his traps and riot shield, ready to eliminate any threat that dares confront him."
     },
     "health": 570,
     "healthPerLevel": 93,
     "healthRegen": 0.9,
     "healthRegenPerLevel": 0.12,
     "mana": 325,
     "manaPerLevel": 43,
     "manaRegen": 1.5,
     "manaRegenPerLevel": 0.15,
     "physicalArmor": 28,
     "physicalArmorPerLevel": 3.3,
     "energyArmor": 30,
     "energyArmorPerLevel": 0.5,
     "movespeed": 565,
     "lmb": {
       "name": "X270 Rail Gun",
       "description": "",
       "cooldown": 1.3,
       "range": 1300,
       "physicalDamage": 67,
       "energyDamage": 0,
       "attackSpeedPerLevel": 2.5,
       "adaptiveDamagePerLevel": 3.5,
       "scalingFactor": "1"
     },
     "rmb": {
       "name": "Shield Push",
       "description": "Murdock uses his Tactical Shield to push enemies directly in front of him back 550 units away.",
       "width": "200",
       "length": "550",
       "cooldown": "10/9.25/8.5/7.75/7",
       "resourceCost": "60",
       "speed": "1200",
       "duration": "0.3"
     },
     "q": {
       "name": "Buckshot",
       "description": "Murdock uses his shotgun to deal 60/100/140/180/220 plus 80.00% physical power as physical damage in a 900 unit long cone in front of him, shredding 15.0/20.0/25.0/30.0/35.0% physical armour for 3 seconds from all units hit.",
       "cooldown": "11/10/9/8/7",
       "resourceCost": "50/60/70/80/90",
       "range": "900",
       "angle": "65",
       "baseDamage": "60/100/140/180/220",
       "scalingFactor": "0.8",
       "physArmPCTRed": "0.15/0.2/0.25/0.3/0.35",
       "reductionDuration": "3"
     },
     "e": {
       "name": "Static Trap",
       "description": "Place up to 3 traps on the ground that explodes for 50/75/100/125/150 plus 50.00% physical power as energy damage and applies a 30.00% slow when stepped on by enemy heroes. Traps last on the ground for 60 seconds. If the opponent is pushed into it, they are also stunned for 1.5 seconds.",
       "range": "1000",
       "radius": "190",
       "cooldown": "12/11/10/9/8",
       "resourceCost": "85",
       "effectDelay": "1",
       "lifetime": "60",
       "maxTrapsDeployed": "3",
       "baseDamage": "50/75/100/125/150",
       "scalingFactor": "0.5",
       "slow": "0.3",
       "slowDuration": "2",
       "stunDuration": "1.5"
     },
     "r": {
       "name": "Long Arm of the Law",
       "description": "Murdock kneels down to prepare his laser cannon. After a 0.6 second delay, Murdock  deals 180/240/300 plus 75.00% physical power as true damage to units hit. Unlimited range.",
       "readyTime": "0.75",
       "cooldown": "90/80/70",
       "resourceCost": "75/85/95",
       "castTime": "0.6",
       "baseDamage": "180/240/300",
       "scalingFactor": "0.75",
       "recoveryTime": "0.8"
     },
     "p": {
       "name": "Judgement of the Law",
       "description": "Murdock gains 116.0/122.0/128.0/134.0% movement speed whenever moving towards enemy heroes that are revealed, below 24.0/28.0/32.0/36.0% max health, and are within 4000/5500/7000/8500 units.",
       "triggerRadius": "4000/5500/7000/8500",
       "triggerHealth%": "0.24/0.28/0.32/0.36",
       "movementSpeed": "1.16/1.22/1.28/1.34"
     }
   },
   {
     "info": {
       "basicRange": "Ranged",
       "niche": "Utility",
       "role": "Caster",
       "damageType": "Energy",
       "description": "Muriel is a ranged utility caster who uses her abilities to manipulate both her enemies and her allies. Enemies will woe her Divine Touch, while allies will welcome her shields and movement speed boosts at any time. Use Serenity to slow and damage enemies from afar at key moments, especially to root them in place and deal extra damage through Divine Touch. Do the same with Consecrated Ground, except allies will also be shielded whenever touched by its energy field. Finally, no ally is too far from her aid, as Muriel can fly to their rescue anywhere they may be with Reversal of Fortune."
     },
     "health": 505,
     "healthPerLevel": 80,
     "healthRegen": 1.1,
     "healthRegenPerLevel": 0.11,
     "mana": 400,
     "manaPerLevel": 55,
     "manaRegen": 2.25,
     "manaRegenPerLevel": 0.12,
     "physicalArmor": 27,
     "physicalArmorPerLevel": 3.6,
     "energyArmor": 29,
     "energyArmorPerLevel": 0.48,
     "movespeed": 560,
     "lmb": {
       "name": "Energy Blast",
       "description": "Muriel fires out a blast of energy, dealing .",
       "cooldown": 1.3,
       "range": 1350,
       "physicalDamage": 55,
       "energyDamage": 0,
       "attackSpeedPerLevel": 2,
       "adaptiveDamagePerLevel": 2.2,
       "scalingFactor": "1"
     },
     "rmb": {
       "name": "Alacrity",
       "description": "Muriel throws out an energy orb that can last on the ground for up to 12 seconds. The first allied hero to touch the orb is granted 32.0/35.0/38.0/41.0/44.0% movement speed for 2.5 seconds and consumes the orb.",
       "cooldown": "8",
       "resourceCost": "70",
       "castTime": "0.2",
       "speed": "9000",
       "range": "3000",
       "projRadius": "50",
       "lifetime": "12",
       "moveSpeed": "0.32/0.35/0.38/0.41/0.44",
       "speedDuration": "2.5"
     },
     "q": {
       "name": "Serenity",
       "description": "Muriel readies a long range projectile energy blast that deals 70/120/170/220/220 plus 80.00% energy power as energy damage and applies a 30.0/34.0/38.0/42.0/42.0% slow for 2.5 seconds to any target hit.",
       "readyMovementMultiplier": "0.9",
       "cooldown": "14/13/12/11/10",
       "resourceCost": "60/70/80/90/100",
       "speed": "6000",
       "range": "2000",
       "baseDamage": "70/120/170/220/220",
       "scalingFactor": "0.8",
       "slow": "0.3/0.34/0.38/0.42/0.42",
       "slowDuration": "2.5"
     },
     "e": {
       "name": "Consecrated Ground",
       "description": "Muriel summons an energy field up to 1800 units away that shields allies that touch the field for 100/130/160/190/220 plus 50.00% energy power, lasting 3 seconds. After 1.5 seconds, it explodes for 60/90/120/150/180 plus 80.00% energy power as energy damage and applies another shield to allies within the shield for 100/130/160/190/220. The second shield refreshes the shield duration.",
       "readyMovementMultiplier": "1",
       "range": "1800",
       "radius": "450",
       "cooldown": "14/13/12/11/10",
       "resourceCost": "80/90/100/110/120",
       "maxLifetime": "1.5",
       "shield": "100/130/160/190/220",
       "shieldScaling": "0.5",
       "shieldDuration": "3",
       "baseDamage": "60/90/120/150/180",
       "scalingFactor": "0.8"
     },
     "r": {
       "name": "Reversal of Fortune",
       "description": "Muriel unfirls her wings over 1.5 seconds, targetting an allied hero to fly to. The ally instantly receives a 250/450/650 plus 60.00% energy power shield when Muriel confirms her target. Enemy heroes within 600 units are knocked up when Muriel lands.",
       "readyTime": "1.5",
       "range": "99999",
       "cooldown": "150/130/110",
       "resourceCost": "150/200/250",
       "shield": "250/450/650",
       "shieldDuration": "5",
       "shieldScaling": "0.6",
       "effectDelay": "2",
       "radius": "600",
       "radiusHeight": "600",
       "knockupSpeed": "700"
     },
     "p": {
       "name": "Divine Touch",
       "description": "Muriel's basic attacks stack Divinity's Mark on units for 4 seconds, stacking up to 5 times. Divinity's Mark can be consumed on units by damaging them with her Serenity and Consecrated Ground abilities, with each stack applying a 0.3/0.34/0.38/0.42 second root and dealing 10/18/26/34 energy damage. Can only stack or effect the same target once every 8/7.5/7/6.5 seconds.",
       "maxDivMarkStacks": "5",
       "rootperStack": "0.3/0.34/0.38/0.42",
       "dmgPerStack": "10/18/26/34",
       "markDuration": "4",
       "onTargetCooldown": "8/7.5/7/6.5"
     }
   },
   {
     "info": {
       "basicRange": "Melee",
       "niche": "Support",
       "role": "Caster",
       "damageType": "Energy",
       "description": "Narbash is a melee support caster who uses his drums to inspire and rejuvinate himself and others. Once a reknowned musician amongst his people, his abilities are welcomed by allies as he inspires them to March at increasingly high speeds. His Song of My People has had rejuvenating powers for generations, allowing himself and others to sustain through the toughest of hardships. When times get even tougher, Narbash has no hesitation to throw his mallets and Thunk his opponents, dealing damage and stunning them into a stupor. And when the time is right, Narbash can channel a deafening Crash Bang Boom to interrupt and disrupt his enemies with a colossal amount of ruckous and noise, allowing his allies to take advantage of even the worst of scenarios. Use his abilities at the right moment to disrupt the enemy and empower your allies."
     },
     "health": 530,
     "healthPerLevel": 90,
     "healthRegen": 1.4,
     "healthRegenPerLevel": 0.12,
     "mana": 340,
     "manaPerLevel": 50,
     "manaRegen": 1,
     "manaRegenPerLevel": 0.08,
     "physicalArmor": 30,
     "physicalArmorPerLevel": 3.8,
     "energyArmor": 30,
     "energyArmorPerLevel": 0.5,
     "movespeed": 570,
     "lmb": {
       "name": "Mallet Strike",
       "description": "Narbash lashes out with his mallet, dealing .",
       "cooldown": 1.5,
       "range": 345,
       "physicalDamage": 72,
       "energyDamage": 0,
       "attackSpeedPerLevel": 3,
       "adaptiveDamagePerLevel": 2.8,
       "scalingFactor": "1"
     },
     "rmb": {
       "name": "Thunk",
       "description": "Narbash throws out a drumstick up to 2000 units away that deals 70/110/150/190/230 plus 80.00% energy power as energy damage and stuns opponents for 1.2/1.35/1.5/1.65/1.8seconds.",
       "cooldown": "16/14/12/10/9",
       "resourceCost": "90",
       "range": "2000",
       "speed": "6000",
       "width": "50",
       "duration": "1.2/1.35/1.5/1.65/1.8",
       "baseDamage": "70/110/150/190/230",
       "scalingFactor": "0.8"
     },
     "q": {
       "name": "March!",
       "description": "Narbash pounds on his drums and inspires himself and allies within 1300 units, granting them and himself 25.0/28.0/31.0/34.0/37.0% movespeed that decays over 3 seconds.",
       "cooldown": "16/15/14/13/12",
       "resourceCost": "80",
       "radius": "1300",
       "bonusMoveSpeed": "0.25/0.28/0.31/0.34/0.37",
       "duration": "3"
     },
     "e": {
       "name": "Song of My People",
       "description": "Narbash drums a soothing beat, healing himself and allies within 900 units for 9/13/17/21/25 health every 0.5 seconds. Consumes 12/16.5/21/25.5/30 mana every second while active. 5 second cooldown.",
       "cooldown": "5",
       "resourceCost": "12/16.5/21/25.5/30",
       "radius": "900",
       "hPperRate": "9/13/17/21/25",
       "rate": "0.5",
       "scalingFactor": "0.04"
     },
     "r": {
       "name": "Crash Bang Boom!",
       "description": "Narbash channels a deafening flurry of drum strikes that applies a 40.00% slow and deals 35/50/65 plus 20.00% energy power as energy damage every 0.5 seconds to all units within 900 units for 3 seconds. Units are knocked up at the end of the ability.",
       "cooldown": "100/85/70",
       "resourceCost": "100/120/140",
       "radius": "900",
       "lifetime": "3",
       "channelMovementMultiplier": "0.8",
       "channelduration": "3",
       "slow": "0.4",
       "baseDamage": "35/50/65",
       "scalingFactor": "0.2",
       "rate": "0.5",
       "knockupspeed": "700"
     },
     "p": {
       "name": "Drummer's Resolve",
       "description": "Narbash gains 0.40 mana regen per 100 points of missing mana.",
       "mRegenperMissMana": "0.004"
     }
   },
   {
     "info": {
       "basicRange": "Melee",
       "niche": "Offensive",
       "role": "Tank",
       "damageType": "Physical",
       "description": "Sevarog is a melee offensive tank capable of stealing the souls of his enemies to make himself stronger over time. Give enough time and desctruction, Sevarog can become an unstoppable force capable of manipulating the flow of battle exactly how he wants. Subjugate enemies in place to ensure their destruction or the survival of your allies, while Phantom Rush allows Sevarog to pass through units unhindered. Use Colossal Blow to knock enemies into favorable positions."
     },
     "health": 545,
     "healthPerLevel": 73,
     "healthRegen": 1.55,
     "healthRegenPerLevel": 0.15,
     "mana": 350,
     "manaPerLevel": 44,
     "manaRegen": 1.6,
     "manaRegenPerLevel": 0.15,
     "physicalArmor": 30,
     "physicalArmorPerLevel": 4,
     "energyArmor": 30,
     "energyArmorPerLevel": 1.25,
     "movespeed": 585,
     "lmb": {
       "name": "Colossal Strike",
       "description": "",
       "cooldown": 1.4,
       "range": 360,
       "physicalDamage": 70,
       "energyDamage": 0,
       "attackSpeedPerLevel": 2,
       "adaptiveDamagePerLevel": 3,
       "scalingFactor": "1"
     },
     "rmb": {
       "name": "Phantom Rush",
       "description": "Sevarog rushes forward and passes through enemy units. Travel Distance increases for each tier of Reapers Soul.",
       "cooldown": "14/13/12/11/10",
       "resourceCost": "45",
       "distancePerPassiveTier": "900/975/1050/1125/1200",
       "speed": "1400"
     },
     "q": {
       "name": "Siphon",
       "description": "Sevarog siphons the souls of units in an area 390/430/470/510/550 units long by 180/190/200/210/220 units wide in front of him, dealing 65/80/95/110/125 plus 50.00% energy power as energy damage. Killing units with Siphon grants 2 times the souls for Reapers Gain. The area of effect increase per Reaper's Gain tier.",
       "readyMovementMultiplier": "0.9",
       "range/PassiveTier": "390/430/470/510/550",
       "width/PassiveTier": "180/190/200/210/220",
       "cooldown": "9/8/7/6/5",
       "resourceCost": "30",
       "castTime": "0.15",
       "passiveGainOnKillMultiplier": "2",
       "baseDamage": "65/80/95/110/125",
       "scalingFactor": "0.5"
     },
     "e": {
       "name": "Subjugate",
       "description": "Sevarog summons dark energy up to 1650 units away, rooting enemies for 1/1.2/1.4/1.6/1.8 seconds and dealing 80/115/150/185/220 plus 50.00% energy power as energy damage in a 280 unit radius area. A 20.0/24.0/28.0/32.0/36.0% slow is applied for 1.5 seconds after the root is complete. Root duration increases per Reaper's Soul tier.",
       "range": "1650",
       "radius": "280",
       "cooldown": "15/13.5/12/10.5/9",
       "resourceCost": "70/80/90/100/110",
       "castTime": "0.6",
       "subjugationAnimationRateScale": "1.2",
       "baseDamage": "80/115/150/185/220",
       "scalingFactor": "0.5",
       "rootDurationperPassiveTier": "1/1.2/1.4/1.6/1.8",
       "slow": "0.2/0.24/0.28/0.32/0.36",
       "slowDuration": "1.5"
     },
     "r": {
       "name": "Colossal Blow",
       "description": "Sevarog swings his hammer, displacing and dealing 140/220/300 plus 80.00% energy power as energy damage to enemies in a [*,{R_Angle},2] degree cone in front of him.",
       "range": "600",
       "angle": "90",
       "cooldown": "55/45/35",
       "resourceCost": "100",
       "castTime": "0.5",
       "castMovementMultiplier": "0.7",
       "baseDamage": "140/220/300",
       "scalingFactor": "0.8",
       "displacementAngle": "50",
       "displacementSpeed": "1500"
     },
     "p": {
       "name": "Reaper's Gain",
       "description": "Sevarog sucks the souls of the enemies he kills with his abilities and gains 1 maximum health and 0.5 bonus Siphon damage per stack. Heroes, Raptors and Orb Prime counts as 3 souls. Attaining 40, 100, 200, 350 stacks unlocks additional bonus tiers, changing Sevarog's appearance and awarding additional max health and energy power.",
       "stacksperMinionKill": "1",
       "stacksperHeroRaptorOPKill": "3",
       "healthPerStack": "1",
       "siphonDamagePerStack": "0.5",
       "stackstoreachTier": "50/100/200/350",
       "bonusHPatEachTier": "50/70/100/135",
       "bonusZapPoweratEachTier": "10/15/20/25"
     }
   },
   {
     "info": {
       "basicRange": "Ranged",
       "niche": "Hyper",
       "role": "Carry",
       "damageType": "Physical",
       "description": "Sparrow is a ranged hyper carry that scales incredibly well into the late game and deals tremendous amounts of damage through consecutive attacks. Sparrow's Relentless enables her to deal bonus damage for each subsequent arrow she lands on a target. Rain distruction down on enemies and build Relentless with Hail of Arrows, and pick off low health targets with Piercing Shot, even through terrain. Quickly gain Relentless on an enemy with Mark of Precision, allowing basic attack damage to build to disastrous levels in a heartbeat. Finally, unleash Sparrow's Inner Fire to summon additional piercing magical arrows for every basic attack, spreading out this destruction all enemies unfortunate enough to feel Sparrow's wrath."
     },
     "health": 510,
     "healthPerLevel": 84,
     "healthRegen": 0.75,
     "healthRegenPerLevel": 0.11,
     "mana": 280,
     "manaPerLevel": 34,
     "manaRegen": 1.3,
     "manaRegenPerLevel": 0.1,
     "physicalArmor": 24,
     "physicalArmorPerLevel": 3,
     "energyArmor": 26,
     "energyArmorPerLevel": 0.5,
     "movespeed": 595,
     "lmb": {
       "name": "Arrow Shot",
       "description": "Sparrow expertly fires arrows from her bow, dealing .",
       "cooldown": 1.2,
       "range": 1350,
       "physicalDamage": 53,
       "energyDamage": 0,
       "attackSpeedPerLevel": 3.8,
       "adaptiveDamagePerLevel": 3.7,
       "scalingFactor": "1"
     },
     "rmb": {
       "name": "Piercing Shot",
       "description": "Sparrow channels a powerful arrow for up to 1 second that deals 75/115/155/195/235 plus 100.00% physical power as physical damage to all enemies in a line up to 2500 units away. Pierces through targets and terrain. Maximum damage occurs at full channel.",
       "minimumChannelTime": "0.33",
       "startingChannelDamage": "0.33",
       "endChannelDamage": "1",
       "maxDamageChannelTime": "1",
       "cooldown": "9",
       "resourceCost": "50/60/70/80/90",
       "castMovementMultiplier": "0.5",
       "range": "2500",
       "projectileSpeed": "8667",
       "baseDamage": "75/115/155/195/235",
       "scalingFactor": "1"
     },
     "q": {
       "name": "Hail of Arrows",
       "description": "Sparrow summons a hail of arrows down on a target area up to 1800 units away dealing 10/20/30/40/50 plus 6.25% physical power as physical damage every 1 second for 4 seconds in a 400 unit radius. Gain 2 Relentless stacks on affected targets every 1 second.",
       "range": "1800",
       "radius": "400",
       "cooldown": "12",
       "resourceCost": "90/100/110/120/130",
       "effectDelay": "1",
       "lifetime": "4",
       "rate": "1",
       "baseDamage": "10/20/30/40/50",
       "scalingFactor": "0.0625",
       "eStackGainperRate": "2"
     },
     "e": {
       "name": "Mark of Precision",
       "description": "Sparrows empowers her next basic attack to mark a target with Mark of Precision for 6 seconds. Mark of Precision will grant 1/1/2/2/3 stacks of Relentless on hit and will grant 1 extra Relentless stacks against the marked target per basic attack. Landing Piercing Shot on a target with Mark of Precision applies a 20.0/24.0/28.0/32.0/36.0% slow for 2 seconds.",
       "cooldown": "18/16/14/12/10",
       "resourceCost": "50/65/80/95/110",
       "exPassStackpHit": "1",
       "pStacksonEHit": "1/1/2/2/3",
       "buffDuration": "6",
       "slow": "0.2/0.24/0.28/0.32/0.36",
       "slowDuration": "2"
     },
     "r": {
       "name": "Inner Fire",
       "description": "Sparrow unleashes righteous fury through her bow for 5/7/9 seconds, summoning two extra arrows per attack and making all arrows pierce through targets. Side arrows deal 50.0/70.0/90.0% of her basic attack damage. Can critically strike. Applies on-hit effects.",
       "cooldown": "100/85/70",
       "resourceCost": "50",
       "duration": "5/7/9",
       "sideProjectiles": "2",
       "sideProjectileAngle": "17.5",
       "sPDmg%": "0.5/0.7/0.9"
     },
     "p": {
       "name": "Relentless",
       "description": "Sparrow's successive basic attacks on the same target deals 1.0/2.5/4.0/5.5% basic attack damage bonus physical damage, stacking up to 10 times.",
       "bonusBADmgpStack": "0.01/0.025/0.04/0.055",
       "maxStacks": "10",
       "stackDurationAdditive": "1"
     }
   },
   {
     "info": {
       "basicRange": "Melee",
       "niche": "Offensive",
       "role": "Tank",
       "damageType": "Energy",
       "description": "Steel is a melee tank who excels at initiating fights and controlling his opponents. As a cyborg experiment, Steel was designed to extract Force Barriers from nearby concussive forces generated from his powerful abilities. Steel uses his Shield Bash to concuss his enemies at close range, while Shield Charge allows Steel to charge through enemies and push them back. In one of his arms lies a deployable shield, allowing Steel to deploy it on the battlefield to provide cover from fire or unfurl it on his arm, giving himself more direct protection from attacks. Nothing stands in Steels way with Shield Crash, where he leaps into the air and uses his shield to pulverize targets within a large area, unleashing massive concussive forces and destruction. Pick the right time to initiate to give your team the best chance on the battlefield."
     },
     "health": 570,
     "healthPerLevel": 84,
     "healthRegen": 1.4,
     "healthRegenPerLevel": 0.13,
     "mana": 330,
     "manaPerLevel": 38,
     "manaRegen": 1.4,
     "manaRegenPerLevel": 0.12,
     "physicalArmor": 34,
     "physicalArmorPerLevel": 3.2,
     "energyArmor": 28,
     "energyArmorPerLevel": 0.5,
     "movespeed": 585,
     "lmb": {
       "name": "Fist Bash",
       "description": "Steel uses his armoured fists to bash his enemies, dealing .",
       "cooldown": 1.2,
       "range": 330,
       "physicalDamage": 60,
       "energyDamage": 0,
       "attackSpeedPerLevel": 3,
       "adaptiveDamagePerLevel": 2.5,
       "scalingFactor": "1"
     },
     "rmb": {
       "name": "Shield Bash",
       "description": "Steel deploys his arm shield and strikes out at his opponents, stunning units for 0.6/0.75/0.9/1.05/1.2 seconds and dealing 70/90/110/130/150 plus 30.00% energy power as energy damage to any units caught in a 350 unit long arc in front of him.",
       "cooldown": "11",
       "resourceCost": "70",
       "animationDuration": "0.8",
       "aM": "1.33375",
       "movementMultiplier": "0.9",
       "range": "350",
       "angle": "80",
       "baseDamage": "70/90/110/130/150",
       "scalingFactor": "0.3",
       "stunDuration": "0.6/0.75/0.9/1.05/1.2"
     },
     "q": {
       "name": "Shield Charge",
       "description": "After a brief delay, Steel charges 1200 units forward, dealing 60/90/120/150/180 plus 60.00% energy power as energy damage and knocking units back that he hits. Steel is unstoppable while charging.",
       "readyMovementMultiplier": "1",
       "range": "1200",
       "width": "350",
       "height": "300",
       "speed": "1760",
       "cooldown": "16/14.5/13/11.5/10",
       "resourceCost": "65/70/75/80/85",
       "windupAnimationDuration": "0.4",
       "baseDamage": "60/90/120/150/180",
       "scalingFactor": "0.6",
       "displacementspeed": "1300",
       "displacementangle": "50",
       "recoveryTime": "0.4",
       "recoveryMovementMultiplier": "0.5"
     },
     "e": {
       "name": "Forceshield",
       "description": "Steel can either deploy his shield on his arm or deploy a forceshield on the battlefield. The forceshield blocks enemy projectiles and applies a [*, 0.15/0.18/0.21/0.24/0.27, 100]% slow for 1.5 seconds to enemies that touch it.",
       "castRange": "1300",
       "cooldown": "36/31.5/27/22.5/18",
       "resourceCost": "40",
       "aM": "0.6",
       "castingMovementModifier": "0.9",
       "width": "1000",
       "depth": "20",
       "height": "800",
       "maxShieldLifetime": "4/5/6/7/8",
       "movementslow": "0.4",
       "slow": "0.15/0.18/0.21/0.24/0.27",
       "slowDuration": "1.5"
     },
     "r": {
       "name": "Shield Crash",
       "description": "Steel leeps into the air towards a target location up to 1650 units away, slamming his shield into the ground dealing 120/170/220 plus 80.00% energy power as energy damage and knocking up and stunning enemies for 1.5/2/2.5 seconds within a 440 unit radius.",
       "range": "1650",
       "radius": "440",
       "cooldown": "90/75/60",
       "resourceCost": "80/90/100",
       "height": "400",
       "baseDamage": "120/170/220",
       "scalingFactor": "0.8",
       "knockupSpeed": "900",
       "stunDuration": "1.5/2/2.5",
       "recoveryTime": "0.2"
     },
     "p": {
       "name": "Force Barrier",
       "description": "Steel gains one stack of 4/5/6/7 energy armour whenever he applies crowd control to an enemy hero with his abilities, up to a maximum of 10 stacks. Stacks last for 5 seconds. Gaining stacks refreshes the duration. When at or above 8 stacks, Steel gains 15.00% crowd control reduction.",
       "maxStacks": "10",
       "eApStack": "4/5/6/7",
       "pStackDuration": "5",
       "cCReduction": "0.15",
       "minStacksforCCR": "8"
     }
   },
   {
     "info": {
       "basicRange": "Ranged",
       "niche": "Mobility",
       "role": "Carry",
       "damageType": "Physical",
       "description": "TwinBlast is a dual-wielding ranged carry that excels at being mobile and evasive. TwinBlast builds mobility through being in prolonged combat and can turn this momentum into high amounts of damage and harassment. Look for opportunities to engage in prolonged engagements that are to your advantage, using Rapid Fire to gain attack speed and damage. His Rocket Dash ability will allow you to reposition at the perfect moment in team fights to turn the tide of battle against your enemies. Finish off any engagement with Ventilate, putting TwinBlast into overdrive and unleashing a hail of gunfire and mobility to overwhelm your opponents."
     },
     "health": 520,
     "healthPerLevel": 84,
     "healthRegen": 0.834,
     "healthRegenPerLevel": 0.118,
     "mana": 300,
     "manaPerLevel": 40,
     "manaRegen": 1.5,
     "manaRegenPerLevel": 0.14,
     "physicalArmor": 26,
     "physicalArmorPerLevel": 3,
     "energyArmor": 28,
     "energyArmorPerLevel": 0.55,
     "movespeed": 580,
     "lmb": {
       "name": "Pistol Shot",
       "description": "Twinblast alternates fire between his two pistols, dealing .",
       "cooldown": 1,
       "range": 1300,
       "physicalDamage": 47,
       "energyDamage": 0,
       "attackSpeedPerLevel": 1.5,
       "adaptiveDamagePerLevel": 2.75,
       "scalingFactor": "1"
     },
     "rmb": {
       "name": "Rapid Fire",
       "description": "Twinblast overclocks his implants, gaining 10.0/15.0/20.0/25.0/30.0% attack speed for 4 seconds, plus 3.00% additional attack speed and 1.5/2/2.5/3/3.5 bonus basic attack damage per stack of Overdrive.",
       "cooldown": "14/13/12/11/10",
       "resourceCost": "45",
       "attackSpeed": "0.1/0.15/0.2/0.25/0.3",
       "aSpPS": "0.03",
       "bBBADpPSt": "1.5/2/2.5/3/3.5",
       "buffDuration": "4"
     },
     "q": {
       "name": "Grenade",
       "description": "Twinblast fires a grenade that explodes, dealing 35/55/75/95/110 plus 30.00% physical power as physical damage  and applying a 15.0/18.0/21.0/24.0/27.0% slow for 1.5 seconds. Twinblast can store up to 3 charges of Grenade. Twinblast can consume 2 Grenade charges to fire a Charged Grenade, increasing it's radius, dealing double damage, and increasing the slow duration.",
       "holdtimethreshold": "0.3",
       "maxRange": "1700",
       "radius": "250",
       "chargeshotRadius": "400",
       "cooldown": "14/12/10/8/6",
       "maxCharges": "3",
       "chargedShotCharges": "2",
       "resourceCost": "35",
       "resourceCostCharged": "70",
       "castTimeChargedGrenade": "0.5",
       "animationRateScale": "1.4",
       "speed": "3000",
       "width": "10",
       "effectDelay": "0.3",
       "baseDamage": "35/55/75/95/110",
       "scalingFactor": "0.3",
       "slow": "0.15/0.18/0.21/0.24/0.27",
       "slowDuration": "1.5",
       "slowDurationChargedGrenade": "3.5",
       "recoveryTimeSingleGrenade": "0.125",
       "recoveryTimeChargedBlast": "0.5",
       "recoveryAnimationRateScale": "1.5",
       "internalgrenadecooldown": "1"
     },
     "e": {
       "name": "Rocket Dash/Combat Roll",
       "description": "Twinblast briefly ignites his evasion thrusters, rapidly propelling him 450/500/550/600/650 units in the direction of input. Ability turns into Roll during Ventilate, allowing him to perform up to 3 combat rolls within Ventilate's duration.",
       "cooldown": "1.5",
       "resourceCost": "80/75/70/65/60",
       "distance": "450/500/550/600/650",
       "height": "75",
       "duration": "0.45",
       "recoveryTime": "0.2",
       "charges": "3",
       "grenadeChargeGainedPerRoll": "1"
     },
     "r": {
       "name": "Ventilate",
       "description": "Twinblast ventilates his implants, allowing him to shoot twice per basic attack. The second shot deals 30.0/40.0/50.0% damage of the primary attack and also applies on-hit effects. Rocket Dash becomes Combat Roll, which can be cast 3 times during Ventilate. Ventilate lasts 7 seconds.",
       "cooldown": "90/70/50",
       "resourceCost": "75",
       "castMovementMultiplier": "1",
       "sPDmg%": "0.3/0.4/0.5",
       "duration": "7"
     },
     "p": {
       "name": "Overdrive",
       "description": "Landing basic attacks stacks 0.8/1.3/1.7/2.1% movement speed, to a maximum of 10 stacks. Stacks last 2 seconds.",
       "%MoveSpeedpSt": "0.008/0.013/0.017/0.021",
       "maxStacks": "10",
       "duration": "2"
     }
   }
 ]
 */
