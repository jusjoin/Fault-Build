//
//  HeroStatsTableViewCell.swift
//  Fault Build
//
//  Created by Zane on 8/18/20.
//  Copyright © 2020 JusDev Studios. All rights reserved.
//

import UIKit

class HeroStatsTableViewCell: FBTableViewCell {

    var hero: Hero
    let stackView1 = UIStackView()
    let stackView2 = UIStackView()
    let stackView3 = UIStackView()
    let stackView4 = UIStackView()
    let stackView5 = UIStackView()
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
    var levelSlider: UISlider = {
        let slider = UISlider()
        slider.minimumValue = 1
        slider.maximumValue = 18
        slider.value = 1
        return slider
    }()
    
        
    init(hero: Hero, tableView: UITableView, reuseIdentifier: String?) {
        self.hero = hero
        super.init(style: .default, reuseIdentifier: reuseIdentifier)
        
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
        self.stackView5.axis = .vertical
        self.stackView5.alignment = .center
        self.stackView5.distribution = .fillProportionally
        
        containerView.translatesAutoresizingMaskIntoConstraints = false
        self.stackView1.translatesAutoresizingMaskIntoConstraints = false
        self.stackView2.translatesAutoresizingMaskIntoConstraints = false
        self.stackView3.translatesAutoresizingMaskIntoConstraints = false
        self.stackView4.translatesAutoresizingMaskIntoConstraints = false
        self.stackView5.translatesAutoresizingMaskIntoConstraints = false
        self.levelSlider.translatesAutoresizingMaskIntoConstraints = false
        
        self.contentView.addSubview(containerView)
        containerView.addSubview(self.stackView1)
        containerView.addSubview(self.stackView2)
        containerView.addSubview(self.stackView3)
        containerView.addSubview(self.stackView4)
        containerView.addSubview(self.stackView5)
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
            self.stackView5.trailingAnchor.constraint(equalTo: containerView.trailingAnchor),
            self.stackView5.bottomAnchor.constraint(equalTo: containerView.bottomAnchor)
        ]
        NSLayoutConstraint.activate(stackView5Constraints)
        
        self.stackView1.addArrangedSubview(self.baseHealthLabel)
        self.stackView1.addArrangedSubview(self.baseManaLabel)
        self.stackView2.addArrangedSubview(self.healthRegenLabel)
        self.stackView2.addArrangedSubview(self.manaRegenLabel)
        self.stackView3.addArrangedSubview(self.basicDefenseLabel)
        self.stackView3.addArrangedSubview(self.abilityDefenseLabel)
        self.stackView4.addArrangedSubview(self.basicAttackLabel)
        self.stackView4.addArrangedSubview(self.attackSpeedLabel)
        self.stackView5.addArrangedSubview(self.moveSpeedLabel)
        self.stackView5.addArrangedSubview(self.sliderLabel)
        self.stackView5.addArrangedSubview(self.levelSlider)
        
        let sliderConstraints = [
            self.levelSlider.widthAnchor.constraint(equalTo: self.stackView5.widthAnchor)
        ]
        NSLayoutConstraint.activate(sliderConstraints)
    }
    
    func populateHeroDataLabels() {
        let heroLevel = Int(levelSlider.value.rounded())
        let heroLevelDouble =  Double(levelSlider.value.rounded())
        let health = self.hero.getBaseHealth() + (self.hero.getHealthPerLevel() * (heroLevel - 1))
        let mana = self.hero.getBaseMana() + (self.hero.getManaPerLevel() * (heroLevel - 1))
        let basicDefense = self.hero.getBasicDefense() + Int(self.hero.getBasicDefensePerLevel() * (heroLevelDouble - 1))
        let healthRegen = String(format: "%.2f",self.hero.getHealthRegen() + (self.hero.getHealthRegenPerLevel()) * (heroLevelDouble - 1))
        let manaRegen = String(format: "%.2f",self.hero.getManaRegen() + (self.hero.getManaRegenPerLevel() * (heroLevelDouble - 1)))
        let energyArmor = String(format: "%.2f",self.hero.getAbilityDefense() + (self.hero.getAbilityDefensePerLevel() * (heroLevelDouble - 1)))
        let basicAttackDamage = self.hero.getBasicAttackDamage() + Int((self.hero.getBasicAttackDamagePerLevel() * (heroLevelDouble - 1)))
        
        let healthPerLevel = self.hero.getHealthPerLevel()
        let healthRegenPerLevel = String(format: "%.2f",self.hero.getHealthRegenPerLevel())
        let attackSpeed = String(format: "%.2f", self.hero.getAttackSpeed())
        let attackDamagePerLevel = self.hero.getBasicAttackDamagePerLevel()
        let manaPerLevel = self.hero.getManaPerLevel()
        let basicDefensePerLevel = self.hero.getBasicDefensePerLevel()
        let energyArmorPerLevel = self.hero.getAbilityDefensePerLevel()
        let movementSpeed = String(self.hero.getMoveSpeed())
        let level = String(format: "%.0f", self.levelSlider.value.rounded())
        
        self.baseHealthLabel.text = "Health: \(health)\n(+\(healthPerLevel))"
        self.baseManaLabel.text = "Mana: \(mana)\n(+\(manaPerLevel))"
        self.basicDefenseLabel.text = "Basic Armor: \(basicDefense)\n(+\(basicDefensePerLevel))"
        self.healthRegenLabel.text = "Health Regen: \(healthRegen)\n(+\(healthRegenPerLevel))"
        self.manaRegenLabel.text = "Mana Regen: \(manaRegen)\n(+\(manaPerLevel))"
        self.abilityDefenseLabel.text = "Energy Armor: \(energyArmor)\n(+\(energyArmorPerLevel))"
        self.basicAttackLabel.text = "Basic Attack: \(basicAttackDamage)\n(+\(attackDamagePerLevel))"
        self.attackSpeedLabel.text = "Attack Speed: \(attackSpeed)\n"
        self.moveSpeedLabel.text = "Movement Speed: \(movementSpeed)"
        self.sliderLabel.text = "Level: \(level)"
    }
    
    @objc func sliderValueDidChange(_ sender: UISlider) {
        let sliderValue = sender.value.rounded()
        sender.value = sliderValue
        sliderLabel.text = String(format: "%.0f", sliderValue)
        print("Slider value change to level \(sliderValue)")
        self.populateHeroDataLabels()
    }

}
