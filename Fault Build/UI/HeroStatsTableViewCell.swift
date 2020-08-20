//
//  HeroStatsTableViewCell.swift
//  Fault Build
//
//  Created by Zane on 8/18/20.
//  Copyright © 2020 JusDev Studios. All rights reserved.
//

import UIKit

class HeroStatsTableViewCell: UITableViewCell {

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
    
        
    init(hero: Hero, tableView: UITableView, reuseIdentifier: String?) {
        self.hero = hero
        super.init(style: .default, reuseIdentifier: reuseIdentifier)
        
        self.setupViews()
        self.populateHeroDataLabels()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews() {
//        let containerView = UIView()
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
        
//        containerView.translatesAutoresizingMaskIntoConstraints = false
        self.stackView1.translatesAutoresizingMaskIntoConstraints = false
        self.stackView2.translatesAutoresizingMaskIntoConstraints = false
        self.stackView3.translatesAutoresizingMaskIntoConstraints = false
        self.stackView4.translatesAutoresizingMaskIntoConstraints = false
        self.stackView5.translatesAutoresizingMaskIntoConstraints = false
        
//        self.contentView.addSubview(containerView)
        self.contentView.addSubview(stackView1)
        self.contentView.addSubview(stackView2)
        self.contentView.addSubview(stackView3)
        self.contentView.addSubview(stackView4)
        self.contentView.addSubview(stackView5)
        
//        let containerViewConstraints = [
//            containerView.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor),
//            containerView.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor),
//            containerView.topAnchor.constraint(equalTo: self.contentView.topAnchor),
//            containerView.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor)
//        ]
//        NSLayoutConstraint.activate(containerViewConstraints)
        
        let stackView1Constraints = [
            stackView1.topAnchor.constraint(equalTo: self.contentView.topAnchor),
            stackView1.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor),
            stackView1.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor)
        ]
        NSLayoutConstraint.activate(stackView1Constraints)
        
        let stackView2Constraints = [
            stackView2.topAnchor.constraint(equalTo: stackView1.bottomAnchor),
            stackView2.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor),
            stackView2.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor)
        ]
        NSLayoutConstraint.activate(stackView2Constraints)
        
        let stackView3Constraints = [
            stackView3.topAnchor.constraint(equalTo: stackView2.bottomAnchor),
            stackView3.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor),
            stackView3.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor)
        ]
        NSLayoutConstraint.activate(stackView3Constraints)
        
        let stackView4Constraints = [
            stackView4.topAnchor.constraint(equalTo: stackView3.bottomAnchor),
            stackView4.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor),
            stackView4.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor)
        ]
        NSLayoutConstraint.activate(stackView4Constraints)
        
        let stackView5Constraints = [
            stackView5.topAnchor.constraint(equalTo: stackView4.bottomAnchor),
            stackView5.centerXAnchor.constraint(equalTo: self.contentView.centerXAnchor),
            stackView5.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor)
        ]
        NSLayoutConstraint.activate(stackView5Constraints)
        
        stackView1.addArrangedSubview(baseHealthLabel)
        stackView1.addArrangedSubview(baseManaLabel)
        stackView2.addArrangedSubview(healthRegenLabel)
        stackView2.addArrangedSubview(manaRegenLabel)
        stackView3.addArrangedSubview(basicDefenseLabel)
        stackView3.addArrangedSubview(abilityDefenseLabel)
        stackView4.addArrangedSubview(basicAttackLabel)
        stackView4.addArrangedSubview(attackSpeedLabel)
        stackView5.addArrangedSubview(moveSpeedLabel)
    }
    
    func populateHeroDataLabels() {
        self.baseHealthLabel.text = "Health: " + String(self.hero.getBaseHealth())
        self.baseManaLabel.text = "Mana: " + String(self.hero.getBaseMana())
        self.basicDefenseLabel.text = "Physical Defense: " + String(self.hero.getBasicDefense())
        self.healthRegenLabel.text = "Health Regen: " + String(format: "%.2f",self.hero.getHealthRegen())
        self.manaRegenLabel.text = "Mana Regen: " + String(format: "%.2f",self.hero.getManaRegen())
        self.abilityDefenseLabel.text = "Energy Armor: " + String(format: "%.2f",self.hero.getAbilityDefense())
        self.basicAttackLabel.text = "Basic Attack: " + String(self.hero.getBasicAttackDamage())
        self.attackSpeedLabel.text = "Attack Speed: " + String(format: "%.2f", self.hero.getAttackSpeed())
        self.moveSpeedLabel.text = "Movement Speed: " + String(self.hero.getMoveSpeed())
    }

}
