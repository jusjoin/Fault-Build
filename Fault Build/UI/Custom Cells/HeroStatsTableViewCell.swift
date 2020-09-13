//
//  HeroStatsTableViewCell.swift
//  Fault Build
//
//  Created by Zane on 8/18/20.
//  Copyright © 2020 JusDev Studios. All rights reserved.
//

import UIKit

protocol HeroStatsDelegate {
    func getBuildItems() -> [GameItem]
    func getAffinities() -> [String: Int]
}

class HeroStatsTableViewCell: FBTableViewCell {

    var hero: Hero
    let stackView1 = UIStackView()
    let stackView2 = UIStackView()
    let stackView3 = UIStackView()
    let stackView4 = UIStackView()
    let stackView5 = UIStackView()
    let stackView6 = UIStackView()
    let stackView7 = UIStackView()
    let stackView8 = UIStackView()
    let stackView9 = UIStackView()
    let baseHealthLabel = UILabel()
    let healthRegenLabel = UILabel()
    let baseManaLabel = UILabel()
    let manaRegenLabel = UILabel()
    let moveSpeedLabel = UILabel()
    let abilityDefenseLabel = UILabel()
    let basicDefenseLabel = UILabel()
    let basicAttackLabel = UILabel()
    let attackSpeedLabel = UILabel()
    let sliderLabel = UILabel()
    let cooldownLabel = UILabel()
    let physicalPenLabel = UILabel()
    let energyPenLabel = UILabel()
    let lifestealLabel = UILabel()
    let physicalPowerLabel = UILabel()
    let energyPowerLabel = UILabel()
    let critChanceLabel = UILabel()
    var levelSlider: UISlider = {
        let slider = UISlider()
        slider.minimumValue = 1
        slider.maximumValue = 18
        slider.value = 1
        return slider
    }()
    var itemBuilder: HeroStatsDelegate?
    var showAllStats: Bool
    var itemHealth = 0.0
    var itemMana = 0.0
    var itemHealthRegen = 0.0
    var itemManaRegen = 0.0
    var itemBasicArmor = 0.0
    var itemEnergyArmor = 0.0
    var itemAttackSpeed = 0.0
    var itemMovementSpeed = 0.0
    var itemCooldown = 0.0
    var itemCritChance = 0.0
    var itemLifesteal = 0.0
    var itemPhysicalPenetration = 0.0
    var itemEnergyPenetration = 0.0
    var itemPhysicalPower = 0.0
    var itemEnergyPower = 0.0
        
    init(hero: Hero, tableView: UITableView, reuseIdentifier: String?, itemBuilder: HeroStatsDelegate? = nil, showAllStats: Bool) {
        self.hero = hero
        self.showAllStats = showAllStats
        super.init(style: .default, reuseIdentifier: reuseIdentifier)
        self.itemBuilder = itemBuilder
        self.levelSlider.addTarget(self, action: #selector(self.sliderValueDidChange(_:)), for: .valueChanged)
        self.setupViews()
        self.populateHeroDataLabels()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews() {
        baseHealthLabel.numberOfLines = 0
        baseHealthLabel.lineBreakMode = .byWordWrapping
        healthRegenLabel.numberOfLines = 0
        healthRegenLabel.lineBreakMode = .byWordWrapping
        baseManaLabel.numberOfLines = 0
        baseManaLabel.lineBreakMode = .byWordWrapping
        manaRegenLabel.numberOfLines = 0
        manaRegenLabel.lineBreakMode = .byWordWrapping
        moveSpeedLabel.numberOfLines = 0
        moveSpeedLabel.lineBreakMode = .byWordWrapping
        abilityDefenseLabel.numberOfLines = 0
        abilityDefenseLabel.lineBreakMode = .byWordWrapping
        basicDefenseLabel.numberOfLines = 0
        basicDefenseLabel.lineBreakMode = .byWordWrapping
        basicAttackLabel.numberOfLines = 0
        basicAttackLabel.lineBreakMode = .byWordWrapping
        attackSpeedLabel.numberOfLines = 0
        attackSpeedLabel.lineBreakMode = .byWordWrapping
        cooldownLabel.numberOfLines = 0
        cooldownLabel.lineBreakMode = .byWordWrapping
        physicalPenLabel.numberOfLines = 0
        physicalPenLabel.lineBreakMode = .byWordWrapping
        energyPenLabel.numberOfLines = 0
        energyPenLabel.lineBreakMode = .byWordWrapping
        lifestealLabel.numberOfLines = 0
        lifestealLabel.lineBreakMode = .byWordWrapping
        physicalPowerLabel.numberOfLines = 0
        physicalPowerLabel.lineBreakMode = .byWordWrapping
        energyPowerLabel.numberOfLines = 0
        energyPowerLabel.lineBreakMode = .byWordWrapping
        critChanceLabel.numberOfLines = 0
        critChanceLabel.lineBreakMode = .byWordWrapping
        
        let containerView = UIView()
        self.stackView1.axis = .horizontal
        self.stackView1.alignment = .center
        self.stackView1.distribution = .fillEqually
        self.stackView2.axis = .horizontal
        self.stackView2.alignment = .center
        self.stackView2.distribution = .fillEqually
        self.stackView3.axis = .horizontal
        self.stackView3.alignment = .center
        self.stackView3.distribution = .fillEqually
        self.stackView4.axis = .horizontal
        self.stackView4.alignment = .center
        self.stackView4.distribution = .fillEqually
        self.stackView5.axis = .horizontal
        self.stackView5.alignment = .center
        self.stackView5.distribution = .fillEqually
        self.stackView6.axis = .horizontal
        self.stackView6.alignment = .center
        self.stackView6.distribution = .fillEqually
        self.stackView7.axis = .horizontal
        self.stackView7.alignment = .center
        self.stackView7.distribution = .fillEqually
        self.stackView8.axis = .horizontal
        self.stackView8.alignment = .center
        self.stackView8.distribution = .fillEqually
        self.stackView9.axis = .vertical
        self.stackView9.alignment = .center
        self.stackView9.distribution = .fillProportionally
        
        containerView.translatesAutoresizingMaskIntoConstraints = false
        self.stackView1.translatesAutoresizingMaskIntoConstraints = false
        self.stackView2.translatesAutoresizingMaskIntoConstraints = false
        self.stackView3.translatesAutoresizingMaskIntoConstraints = false
        self.stackView4.translatesAutoresizingMaskIntoConstraints = false
        self.stackView5.translatesAutoresizingMaskIntoConstraints = false
        self.stackView6.translatesAutoresizingMaskIntoConstraints = false
        self.stackView7.translatesAutoresizingMaskIntoConstraints = false
        self.stackView8.translatesAutoresizingMaskIntoConstraints = false
        self.stackView9.translatesAutoresizingMaskIntoConstraints = false
        self.levelSlider.translatesAutoresizingMaskIntoConstraints = false
        
        self.contentView.addSubview(containerView)
        containerView.addSubview(self.stackView1)
        containerView.addSubview(self.stackView2)
        containerView.addSubview(self.stackView3)
        containerView.addSubview(self.stackView4)
        containerView.addSubview(self.stackView5)
        containerView.addSubview(self.stackView6)
        containerView.addSubview(self.stackView7)
        containerView.addSubview(self.stackView8)
        containerView.addSubview(self.stackView9)
//        containerView.addSubview(self.levelSlider)
        
        let containerViewConstraints = [
            containerView.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor),
            containerView.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor),
            containerView.topAnchor.constraint(equalTo: self.contentView.topAnchor),
            containerView.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor)
        ]
        NSLayoutConstraint.activate(containerViewConstraints)
        
        let stackView1Constraints = [
            self.stackView1.topAnchor.constraint(equalTo: containerView.topAnchor),
            self.stackView1.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            self.stackView1.trailingAnchor.constraint(equalTo: containerView.trailingAnchor)
        ]
        NSLayoutConstraint.activate(stackView1Constraints)
        
        let stackView2Constraints = [
            self.stackView2.topAnchor.constraint(equalTo: stackView1.bottomAnchor),
            self.stackView2.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            self.stackView2.trailingAnchor.constraint(equalTo: containerView.trailingAnchor)
        ]
        NSLayoutConstraint.activate(stackView2Constraints)
        
        let stackView3Constraints = [
            self.stackView3.topAnchor.constraint(equalTo: stackView2.bottomAnchor),
            self.stackView3.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            self.stackView3.trailingAnchor.constraint(equalTo: containerView.trailingAnchor)
        ]
        NSLayoutConstraint.activate(stackView3Constraints)
        
        let stackView4Constraints = [
            self.stackView4.topAnchor.constraint(equalTo: stackView3.bottomAnchor),
            self.stackView4.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            self.stackView4.trailingAnchor.constraint(equalTo: containerView.trailingAnchor)
        ]
        NSLayoutConstraint.activate(stackView4Constraints)
        
        let stackView5Constraints = [
            self.stackView5.topAnchor.constraint(equalTo: stackView4.bottomAnchor),
            self.stackView5.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            self.stackView5.trailingAnchor.constraint(equalTo: containerView.trailingAnchor)
        ]
        NSLayoutConstraint.activate(stackView5Constraints)
        
        let stackView6Constraints = [
            self.stackView6.topAnchor.constraint(equalTo: stackView5.bottomAnchor),
            self.stackView6.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            self.stackView6.trailingAnchor.constraint(equalTo: containerView.trailingAnchor)
        ]
        NSLayoutConstraint.activate(stackView6Constraints)
        
        let stackView7Constraints = [
            self.stackView7.topAnchor.constraint(equalTo: stackView6.bottomAnchor),
            self.stackView7.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            self.stackView7.trailingAnchor.constraint(equalTo: containerView.trailingAnchor)
        ]
        NSLayoutConstraint.activate(stackView7Constraints)
        
        let stackView8Constraints = [
            self.stackView8.topAnchor.constraint(equalTo: stackView7.bottomAnchor),
            self.stackView8.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            self.stackView8.trailingAnchor.constraint(equalTo: containerView.trailingAnchor)
        ]
        NSLayoutConstraint.activate(stackView8Constraints)
        
        let stackView9Constraints = [
            self.stackView9.topAnchor.constraint(equalTo: stackView8.bottomAnchor),
            self.stackView9.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            self.stackView9.trailingAnchor.constraint(equalTo: containerView.trailingAnchor),
            self.stackView9.bottomAnchor.constraint(equalTo: containerView.bottomAnchor)
        ]
        NSLayoutConstraint.activate(stackView9Constraints)
        
        self.stackView1.addArrangedSubview(self.baseHealthLabel)
        self.stackView1.addArrangedSubview(self.baseManaLabel)
        self.stackView2.addArrangedSubview(self.healthRegenLabel)
        self.stackView2.addArrangedSubview(self.manaRegenLabel)
        self.stackView3.addArrangedSubview(self.basicDefenseLabel)
        self.stackView3.addArrangedSubview(self.abilityDefenseLabel)
        self.stackView4.addArrangedSubview(self.basicAttackLabel)
        self.stackView4.addArrangedSubview(self.attackSpeedLabel)
        if self.showAllStats {
            self.stackView5.addArrangedSubview(self.lifestealLabel)
            self.stackView5.addArrangedSubview(self.cooldownLabel)
            self.stackView6.addArrangedSubview(self.physicalPenLabel)
            self.stackView6.addArrangedSubview(self.energyPenLabel)
            self.stackView7.addArrangedSubview(self.physicalPowerLabel)
            self.stackView7.addArrangedSubview(self.energyPowerLabel)
            self.stackView8.addArrangedSubview(self.critChanceLabel)
            self.stackView8.addArrangedSubview(self.moveSpeedLabel)
        }
        else {
            self.stackView9.addArrangedSubview(self.moveSpeedLabel)
        }
        self.stackView9.addArrangedSubview(self.sliderLabel)
        self.stackView9.addArrangedSubview(self.levelSlider)
        
        let sliderConstraints = [
            self.levelSlider.widthAnchor.constraint(equalTo: self.stackView9.widthAnchor)
        ]
        NSLayoutConstraint.activate(sliderConstraints)
    }
    
    func populateHeroDataLabels() {
        self.itemHealth = self.itemHealth + healthFromItems()
        self.itemMana = self.itemMana + manaFromItems()
        self.itemHealthRegen = self.itemHealthRegen + healthRegenFromItems()
        self.itemManaRegen = self.itemManaRegen + manaRegenFromItems()
        self.itemBasicArmor = self.itemBasicArmor + basicArmorFromItems()
        self.itemEnergyArmor = self.itemEnergyArmor + energyArmorFromItems()
        self.itemAttackSpeed = self.itemAttackSpeed + attackSpeedFromItems()
        self.itemMovementSpeed = self.itemMovementSpeed + movementSpeedFromItems()
        self.itemCooldown = self.itemCooldown + cooldownFromItems()
        self.itemCritChance = self.itemCritChance + critChanceFromItems()
        self.itemLifesteal = self.itemLifesteal + lifestealFromItems()
        self.itemPhysicalPenetration = self.itemPhysicalPenetration + physicalPenetrationFromItems()
        self.itemEnergyPenetration = self.itemEnergyPenetration + energyPenetrationFromItems()
        self.itemPhysicalPower = self.itemPhysicalPower + physicalPowerFromItems()
        self.itemEnergyPower = self.itemEnergyPower + energyPowerFromItems()
        
        let heroLevel = Int(levelSlider.value.rounded())
        let heroLevelDouble =  Double(levelSlider.value.rounded())
        let health = Double(self.hero.getBaseHealth() + (self.hero.getHealthPerLevel() * (heroLevel - 1))) + itemHealth
        let mana = Double(self.hero.getBaseMana() + (self.hero.getManaPerLevel() * (heroLevel - 1))) + itemMana
        let basicDefense = Double(self.hero.getBasicDefense()) + self.hero.getBasicDefensePerLevel() * (heroLevelDouble - 1) + itemBasicArmor
        let healthRegen = Double(self.hero.getHealthRegen() + (self.hero.getHealthRegenPerLevel()) * (heroLevelDouble - 1)) + itemHealthRegen
        let manaRegen = Double(self.hero.getManaRegen() + (self.hero.getManaRegenPerLevel() * (heroLevelDouble - 1))) + itemManaRegen
        let energyArmor = Double(self.hero.getAbilityDefense() + (self.hero.getAbilityDefensePerLevel() * (heroLevelDouble - 1))) + itemEnergyArmor
        let basicAttackDamage = self.hero.getBasicAttackDamage() + (self.hero.getBasicAttackDamagePerLevel() * (heroLevelDouble - 1))
        
        let healthPerLevel = self.hero.getHealthPerLevel()
        let healthRegenPerLevel = self.hero.getHealthRegenPerLevel()
        let attackSpeed = Double(self.hero.getAttackSpeed()) + itemAttackSpeed
        let attackDamagePerLevel = self.hero.getBasicAttackDamagePerLevel()
        let manaPerLevel = self.hero.getManaPerLevel()
        let basicDefensePerLevel = self.hero.getBasicDefensePerLevel()
        let energyArmorPerLevel = self.hero.getAbilityDefensePerLevel()
        let movementSpeed = Double(self.hero.getMoveSpeed()) + itemMovementSpeed
        let level = String(format: "%.0f", self.levelSlider.value.rounded())
        
        //TODO: Add gained amount in square brackets at the end of each label
        //For example "[\(itemHealth)]"
        self.baseHealthLabel.text = "Health: \(health.stringDP(0))\n(+\(healthPerLevel))"
        self.baseManaLabel.text = "Mana: \(mana.stringDP(0))\n(+\(manaPerLevel))"
        self.basicDefenseLabel.text = "Basic Armor: \(basicDefense.stringDP(0))\n(+\(basicDefensePerLevel.stringDP(0)))"
        self.healthRegenLabel.text = "Health Regen: \(healthRegen.stringDP(2))\n(+\(healthRegenPerLevel.stringDP(2)))"
        self.manaRegenLabel.text = "Mana Regen: \(manaRegen.stringDP(2))\n(+\(manaPerLevel))"
        self.abilityDefenseLabel.text = "Energy Armor: \(energyArmor.stringDP(0))\n(+\(energyArmorPerLevel.stringDP(0)))"
        self.basicAttackLabel.text = "Basic Attack: \(basicAttackDamage.stringDP(2))\n(+\(attackDamagePerLevel.stringDP(2)))"
        self.attackSpeedLabel.text = "Attack Speed: \(attackSpeed.stringDP(2))\n"
        self.cooldownLabel.text = "Cooldown: \(itemCooldown.stringDP(2))\n"
        self.physicalPenLabel.text = "Physical Pen: \(itemPhysicalPenetration.stringDP(2))\n"
        self.energyPenLabel.text = "Energy Pen: \(itemEnergyPenetration.stringDP(2))\n"
        self.lifestealLabel.text = "Lifesteal: \(itemLifesteal.stringDP(2))\n"
        self.physicalPowerLabel.text = "Physical Power: \(itemPhysicalPower.stringDP(2))\n"
        self.energyPowerLabel.text = "Energy Power: \(itemEnergyPower.stringDP(2))\n"
        self.critChanceLabel.text = "Crit Chance: \(itemCritChance.stringDP(2))\n"
        self.moveSpeedLabel.text = "Move Speed: \(movementSpeed.stringDP(2))\n"
        self.sliderLabel.text = "Level: \(level)"
    }
    
    func healthFromItems() -> Double {
        var healthGained = self.itemHealth
        if let buildItems = self.itemBuilder?.getBuildItems() {
            for item in buildItems {
                for attribute in item.attributes {
                    if attribute.attributeName == ItemAttribute.health.description() {
                        healthGained = healthGained + attribute.value
                        if let affinityRank = itemBuilder?.getAffinities()[item.color] {
                            if attribute.rankValue > 0 {
                                healthGained = healthGained + (attribute.rankValue * Double(affinityRank))
                            }
                        }
                    }
                }
            }
        }
        return healthGained
    }
    
    func manaFromItems() -> Double {
        var manaGained = self.itemMana
        if let buildItems = self.itemBuilder?.getBuildItems() {
            for item in buildItems {
                for attribute in item.attributes {
                    if attribute.attributeName == ItemAttribute.mana.description() {
                        manaGained = manaGained + attribute.value
                        if let affinityRank = itemBuilder?.getAffinities()[item.color] {
                            if attribute.rankValue > 0 {
                                manaGained = manaGained + (attribute.rankValue * Double(affinityRank))
                            }
                        }
                    }
                }
            }
        }
        return manaGained
    }
    
    func healthRegenFromItems() -> Double {
        var healthRegenGained = 0.0
        if let buildItems = self.itemBuilder?.getBuildItems() {
            for item in buildItems {
                for attribute in item.attributes {
                    if attribute.attributeName == ItemAttribute.healthRegenRate.description() {
                        healthRegenGained = attribute.value
                        if let affinityRank = itemBuilder?.getAffinities()[item.color] {
                            if attribute.rankValue > 0 {
                                healthRegenGained = healthRegenGained + (attribute.rankValue * Double(affinityRank))
                            }
                        }
                    }
                }
            }
        }
        return healthRegenGained
    }
    
    func manaRegenFromItems() -> Double{
        var manaRegenGained = 0.0
        if let buildItems = self.itemBuilder?.getBuildItems() {
            for item in buildItems {
                for attribute in item.attributes {
                    if attribute.attributeName == ItemAttribute.manaRegenRate.description() {
                        manaRegenGained = attribute.value
                        if let affinityRank = itemBuilder?.getAffinities()[item.color] {
                            if attribute.rankValue > 0 {
                                manaRegenGained = manaRegenGained + (attribute.rankValue * Double(affinityRank))
                            }
                        }
                    }
                }
            }
        }
        return manaRegenGained
    }
    
    func basicArmorFromItems() -> Double {
        var physicalArmorGained = 0.0
        if let buildItems = self.itemBuilder?.getBuildItems() {
            for item in buildItems {
                for attribute in item.attributes {
                    if attribute.attributeName == ItemAttribute.ouchieArmor.description() {
                        physicalArmorGained = attribute.value
                        if let affinityRank = itemBuilder?.getAffinities()[item.color] {
                            if attribute.rankValue > 0 {
                                physicalArmorGained = physicalArmorGained + (attribute.rankValue * Double(affinityRank))
                            }
                        }
                    }
                }
            }
        }
        return physicalArmorGained
    }
    
    func energyArmorFromItems() -> Double {
        var energyArmorGained = 0.0
        if let buildItems = self.itemBuilder?.getBuildItems() {
            for item in buildItems {
                for attribute in item.attributes {
                    if attribute.attributeName == ItemAttribute.sizzleArmor.description() {
                        energyArmorGained = attribute.value
                        if let affinityRank = itemBuilder?.getAffinities()[item.color] {
                            if attribute.rankValue > 0 {
                                energyArmorGained = energyArmorGained + (attribute.rankValue * Double(affinityRank))
                            }
                        }
                    }
                }
            }
        }
        return energyArmorGained
    }
    
    func attackSpeedFromItems() -> Double {
        var attackSpeedGained = 0.0
        if let buildItems = self.itemBuilder?.getBuildItems() {
            for item in buildItems {
                for attribute in item.attributes {
                    if attribute.attributeName == ItemAttribute.attackSpeed.description() {
                        attackSpeedGained = (attribute.value / 100) * self.hero.getAttackSpeed()
                        if let affinityRank = itemBuilder?.getAffinities()[item.color] {
                            if attribute.rankValue > 0 {
                                let percentGain = ((attribute.value + (attribute.rankValue * Double(affinityRank))) / 100)
                                attackSpeedGained = percentGain * self.hero.getAttackSpeed()
                            }
                        }
                    }
                }
            }
        }
        return attackSpeedGained
    }
    
    func movementSpeedFromItems() -> Double {
        var movementSpeedGained = 0.0
        if let buildItems = self.itemBuilder?.getBuildItems() {
            for item in buildItems {
                for attribute in item.attributes {
                    if attribute.attributeName == ItemAttribute.movementSpeed.description() {
                        movementSpeedGained = attribute.value
                        if let affinityRank = itemBuilder?.getAffinities()[item.color] {
                            if attribute.rankValue > 0 {
                                movementSpeedGained = movementSpeedGained + (attribute.rankValue * Double(affinityRank))
                            }
                        }
                    }
                }
            }
        }
        return movementSpeedGained
    }
    
    func cooldownFromItems() -> Double {
        var cooldownGained = 0.0
        if let buildItems = self.itemBuilder?.getBuildItems() {
            for item in buildItems {
                for attribute in item.attributes {
                    if attribute.attributeName == ItemAttribute.pctCDR.description() {
                        cooldownGained = attribute.value * 100
                        if let affinityRank = itemBuilder?.getAffinities()[item.color] {
                            if attribute.rankValue > 0 {
                                cooldownGained = cooldownGained + (attribute.rankValue * Double(affinityRank * 100))
                            }
                        }
                    }
                }
            }
        }
        return cooldownGained
    }
    
    func critChanceFromItems() -> Double {
        var critChanceGained = 0.0
        if let buildItems = self.itemBuilder?.getBuildItems() {
            for item in buildItems {
                for attribute in item.attributes {
                    if attribute.attributeName == ItemAttribute.critChance.description() {
                        critChanceGained = attribute.value * 100
                        if let affinityRank = itemBuilder?.getAffinities()[item.color] {
                            if attribute.rankValue > 0 {
                                critChanceGained = critChanceGained + (attribute.rankValue * Double(affinityRank * 100))
                            }
                        }
                    }
                }
            }
        }
        return critChanceGained
    }
    
    func lifestealFromItems() -> Double {
        var lifestealGained = 0.0
        if let buildItems = self.itemBuilder?.getBuildItems() {
            for item in buildItems {
                for attribute in item.attributes {
                    if attribute.attributeName == ItemAttribute.lifesteal.description() {
                        lifestealGained = attribute.value * 100
                        if let affinityRank = itemBuilder?.getAffinities()[item.color] {
                            if attribute.rankValue > 0 {
                                lifestealGained = lifestealGained + (attribute.rankValue * Double(affinityRank * 100))
                            }
                        }
                    }
                }
            }
        }
        return lifestealGained
    }
    
    func physicalPenetrationFromItems() -> Double {
        var physicalPenetrationGained = 0.0
        if let buildItems = self.itemBuilder?.getBuildItems() {
            for item in buildItems {
                for attribute in item.attributes {
                    if attribute.attributeName == ItemAttribute.ouchiePenetration.description() {
                        physicalPenetrationGained = attribute.value
                        if let affinityRank = itemBuilder?.getAffinities()[item.color] {
                            if attribute.rankValue > 0 {
                                physicalPenetrationGained = physicalPenetrationGained + (attribute.rankValue * Double(affinityRank))
                            }
                        }
                    }
                }
            }
        }
        return physicalPenetrationGained
    }
    
    func energyPenetrationFromItems() -> Double {
        var energyPenetrationGained = 0.0
        if let buildItems = self.itemBuilder?.getBuildItems() {
            for item in buildItems {
                for attribute in item.attributes {
                    if attribute.attributeName == ItemAttribute.sizzlePenetration.description() {
                        energyPenetrationGained = attribute.value
                        if let affinityRank = itemBuilder?.getAffinities()[item.color] {
                            if attribute.rankValue > 0 {
                                energyPenetrationGained = energyPenetrationGained + (attribute.rankValue * Double(affinityRank))
                            }
                        }
                    }
                }
            }
        }
        return energyPenetrationGained
    }
    
    func physicalPowerFromItems() -> Double {
        var physicalPowerGained = 0.0
        if let buildItems = self.itemBuilder?.getBuildItems() {
            for item in buildItems {
                for attribute in item.attributes {
                    if attribute.attributeName == ItemAttribute.ouchPower.description() {
                        physicalPowerGained = attribute.value
                        if let affinityRank = itemBuilder?.getAffinities()[item.color] {
                            if attribute.rankValue > 0 {
                                physicalPowerGained = physicalPowerGained + (attribute.rankValue * Double(affinityRank))
                            }
                        }
                    }
                }
            }
        }
        return physicalPowerGained
    }
    
    func energyPowerFromItems() -> Double {
        var energyPowerGained = 0.0
        if let buildItems = self.itemBuilder?.getBuildItems() {
            for item in buildItems {
                for attribute in item.attributes {
                    if attribute.attributeName == ItemAttribute.zapPower.description() {
                        energyPowerGained = attribute.value
                        if let affinityRank = itemBuilder?.getAffinities()[item.color] {
                            if attribute.rankValue > 0 {
                                energyPowerGained = energyPowerGained + (attribute.rankValue * Double(affinityRank))
                            }
                        }
                    }
                }
            }
        }
        return energyPowerGained
    }
    
    @objc func sliderValueDidChange(_ sender: UISlider) {
        let sliderValue = sender.value.rounded()
        sender.value = sliderValue
        sliderLabel.text = String(format: "%.0f", sliderValue)
        print("Slider value change to level \(sliderValue)")
        self.resetStats()
    }
    
    func resetStats() {
        self.itemHealth = 0.0
        self.itemMana = 0.0
        self.itemHealthRegen = 0.0
        self.itemManaRegen = 0.0
        self.itemBasicArmor = 0.0
        self.itemEnergyArmor = 0.0
        self.itemAttackSpeed = 0.0
        self.itemMovementSpeed = 0.0
        self.itemCooldown = 0.0
        self.itemCritChance = 0.0
        self.itemLifesteal = 0.0
        self.itemPhysicalPenetration = 0.0
        self.itemEnergyPenetration = 0.0
        self.itemPhysicalPower = 0.0
        self.itemEnergyPower = 0.0
        self.populateHeroDataLabels()
    }
}

extension HeroStatsTableViewCell: ItemBuilderDelegate {
    func updateHeroStats() {
        self.resetStats()
    }
}
