//
//  ItemFilterTableViewCell.swift
//  Fault Build
//
//  Created by Zane on 8/23/20.
//  Copyright © 2020 JusDev Studios. All rights reserved.
//

import UIKit

protocol ItemFilterTableViewCellDelegate: AnyObject {
    func didSelectFilter(selectedFilter: ItemAttribute)
    func getActiveFilters() -> [String]
}

class ItemFilterTableViewCell: FBTableViewCell {
    
    //TODO:Make dynamic, pass filters with state to init
    var filters: [ItemAttribute: Bool]
        
    let mainStackView = UIStackView()
    var stackView1 = UIStackView()
    var stackView2 = UIStackView()
    var stackView3 = UIStackView()
    var stackView4 = UIStackView()
    var stackView5 = UIStackView()
    weak var delegate: ItemFilterTableViewCellDelegate?
    
    
    init(tableView: UITableView, reuseIdentifier: String?, filters: [ItemAttribute: Bool]) {
        self.filters = filters
        super.init(style: .default, reuseIdentifier: reuseIdentifier)
        
        self.setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews(){
        self.mainStackView.translatesAutoresizingMaskIntoConstraints = false
        
        self.mainStackView.axis = .vertical
        self.mainStackView.distribution = .fillEqually
        self.mainStackView.alignment = .center
        
//        self.stackView1.layer.cornerRadius = self.stackView1.frame.size.width / 2;
//        self.stackView1.clipsToBounds = true;
        
        self.contentView.addSubview(mainStackView)
        let stackViewConstraints = [
            mainStackView.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor),
            mainStackView.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor),
            mainStackView.topAnchor.constraint(equalTo: self.contentView.topAnchor),
            mainStackView.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor)
        ]
        NSLayoutConstraint.activate(stackViewConstraints)
        
        self.stackView1.axis = .horizontal
        self.stackView1.distribution = .fillEqually
        self.stackView1.alignment = .center
        
        self.stackView2.axis = .horizontal
        self.stackView2.distribution = .fillEqually
        self.stackView2.alignment = .center

        self.stackView3.axis = .horizontal
        self.stackView3.distribution = .fillEqually
        self.stackView3.alignment = .center

        self.stackView4.axis = .horizontal
        self.stackView4.distribution = .fillEqually
        self.stackView4.alignment = .center
        
        self.stackView5.axis = .horizontal
        self.stackView5.distribution = .fillEqually
        self.stackView5.alignment = .center

        
        self.mainStackView.addArrangedSubview(self.stackView1)
        stackView1.translatesAutoresizingMaskIntoConstraints = false
        let stackView1Constraints = [
            stackView1.leadingAnchor.constraint(equalTo: mainStackView.leadingAnchor),
            stackView1.trailingAnchor.constraint(equalTo: mainStackView.trailingAnchor)
        ]
        NSLayoutConstraint.activate(stackView1Constraints)

        
        self.mainStackView.addArrangedSubview(stackView2)
        stackView2.translatesAutoresizingMaskIntoConstraints = false
        let stackView2Constraints = [
            stackView2.leadingAnchor.constraint(equalTo: mainStackView.leadingAnchor),
            stackView2.trailingAnchor.constraint(equalTo: mainStackView.trailingAnchor)
        ]
        NSLayoutConstraint.activate(stackView2Constraints)
        
        self.mainStackView.addArrangedSubview(stackView3)
        stackView3.translatesAutoresizingMaskIntoConstraints = false
        let stackView3Constraints = [
            stackView3.leadingAnchor.constraint(equalTo: mainStackView.leadingAnchor),
            stackView3.trailingAnchor.constraint(equalTo: mainStackView.trailingAnchor)
        ]
        NSLayoutConstraint.activate(stackView3Constraints)
        
        self.mainStackView.addArrangedSubview(stackView4)
        stackView4.translatesAutoresizingMaskIntoConstraints = false
        let stackView4Constraints = [
            stackView4.leadingAnchor.constraint(equalTo: mainStackView.leadingAnchor),
            stackView4.trailingAnchor.constraint(equalTo: mainStackView.trailingAnchor)
        ]
        NSLayoutConstraint.activate(stackView4Constraints)
        
        self.mainStackView.addArrangedSubview(stackView5)
        stackView5.translatesAutoresizingMaskIntoConstraints = false
        let stackView5Constraints = [
            stackView5.leadingAnchor.constraint(equalTo: mainStackView.leadingAnchor),
            stackView5.trailingAnchor.constraint(equalTo: mainStackView.trailingAnchor)
        ]
        NSLayoutConstraint.activate(stackView5Constraints)
        
        func titleForButton(isEnabled: Bool) -> String {
            var title = ""
            if isEnabled {
                title = "X"
            }
            else {
                title = "O"
            }
            return title
        }
        
        //TODO: Set state of button/ button title/ button image based on filter state
        let physicalPowerButton = UIButton(type: .roundedRect)
        if let state = filters[ItemAttribute.ouchPower] {
            physicalPowerButton.setTitle(titleForButton(isEnabled: state), for: .normal)
            }
        physicalPowerButton.tag = ItemAttribute.ouchPower.rawValue
        physicalPowerButton.addTarget(self, action: #selector(toggleFilter(sender:)), for: .touchUpInside)
        
        let physicalArmorButton = UIButton(type: .roundedRect)
        if let state = filters[ItemAttribute.ouchieArmor] {
        physicalArmorButton.setTitle(titleForButton(isEnabled: state), for: .normal)
        }
        physicalArmorButton.tag = ItemAttribute.ouchieArmor.rawValue
        physicalArmorButton.addTarget(self, action: #selector(toggleFilter(sender:)), for: .touchUpInside)
        
        let physicalPenetrationButton = UIButton(type: .roundedRect)
        if let state = filters[ItemAttribute.ouchiePenetration] {
        physicalPenetrationButton.setTitle(titleForButton(isEnabled: state), for: .normal)
        }
        physicalPenetrationButton.tag = ItemAttribute.ouchiePenetration.rawValue
        physicalPenetrationButton.addTarget(self, action: #selector(toggleFilter(sender:)), for: .touchUpInside)
        
        let energyPowerButton = UIButton(type: .roundedRect)
        if let state = filters[ItemAttribute.zapPower] {
        energyPowerButton.setTitle(titleForButton(isEnabled: state), for: .normal)
        }
        energyPowerButton.tag = ItemAttribute.zapPower.rawValue
        energyPowerButton.addTarget(self, action: #selector(toggleFilter(sender:)), for: .touchUpInside)
        
        let energyArmorButton = UIButton(type: .roundedRect)
        if let state = filters[ItemAttribute.sizzleArmor] {
        energyArmorButton.setTitle(titleForButton(isEnabled: state), for: .normal)
        }
        energyArmorButton.tag = ItemAttribute.sizzleArmor.rawValue
        energyArmorButton.addTarget(self, action: #selector(toggleFilter(sender:)), for: .touchUpInside)
        
        let energyPenetrationButton = UIButton(type: .roundedRect)
        if let state = filters[ItemAttribute.sizlePenetration] {
        energyPenetrationButton.setTitle(titleForButton(isEnabled: state), for: .normal)
        }
        energyPenetrationButton.tag = ItemAttribute.sizlePenetration.rawValue
        energyPenetrationButton.addTarget(self, action: #selector(toggleFilter(sender:)), for: .touchUpInside)
        
        let healthButton = UIButton(type: .roundedRect)
        if let state = filters[ItemAttribute.health] {
        healthButton.setTitle(titleForButton(isEnabled: state), for: .normal)
        }
        healthButton.tag = ItemAttribute.health.rawValue
        healthButton.addTarget(self, action: #selector(toggleFilter(sender:)), for: .touchUpInside)
        
        let healthRegenButton = UIButton(type: .roundedRect)
        if let state = filters[ItemAttribute.healthRegenRate] {
        healthRegenButton.setTitle(titleForButton(isEnabled: state), for: .normal)
        }
        healthRegenButton.tag = ItemAttribute.healthRegenRate.rawValue
        healthRegenButton.addTarget(self, action: #selector(toggleFilter(sender:)), for: .touchUpInside)
        
        let manaButton = UIButton(type: .roundedRect)
        if let state = filters[ItemAttribute.mana] {
        manaButton.setTitle(titleForButton(isEnabled: state), for: .normal)
        }
        manaButton.tag = ItemAttribute.mana.rawValue
        manaButton.addTarget(self, action: #selector(toggleFilter(sender:)), for: .touchUpInside)
        
        let manaRegenButton = UIButton(type: .roundedRect)
        if let state = filters[ItemAttribute.manaRegenRate] {
        manaRegenButton.setTitle(titleForButton(isEnabled: state), for: .normal)
        }
        manaRegenButton.tag = ItemAttribute.manaRegenRate.rawValue
        manaRegenButton.addTarget(self, action: #selector(toggleFilter(sender:)), for: .touchUpInside)
        
        let cooldownButton = UIButton(type: .roundedRect)
        if let state = filters[ItemAttribute.pctDR] {
        cooldownButton.setTitle(titleForButton(isEnabled: state), for: .normal)
        }
        cooldownButton.tag = ItemAttribute.pctDR.rawValue
        cooldownButton.addTarget(self, action: #selector(toggleFilter(sender:)), for: .touchUpInside)
        
        let attackSpeedButton = UIButton(type: .roundedRect)
        if let state = filters[ItemAttribute.attackSpeed] {
        attackSpeedButton.setTitle(titleForButton(isEnabled: state), for: .normal)
        }
        attackSpeedButton.tag = ItemAttribute.attackSpeed.rawValue
        attackSpeedButton.addTarget(self, action: #selector(toggleFilter(sender:)), for: .touchUpInside)
        
        let moveSpeedButton = UIButton(type: .roundedRect)
        if let state = filters[ItemAttribute.movementSpeed] {
        moveSpeedButton.setTitle(titleForButton(isEnabled: state), for: .normal)
        }
        moveSpeedButton.tag = ItemAttribute.movementSpeed.rawValue
        moveSpeedButton.addTarget(self, action: #selector(toggleFilter(sender:)), for: .touchUpInside)
        
        let critChanceButton = UIButton(type: .roundedRect)
        if let state = filters[ItemAttribute.critChance] {
        critChanceButton.setTitle(titleForButton(isEnabled: state), for: .normal)
        }
        critChanceButton.tag = ItemAttribute.critChance.rawValue
        critChanceButton.addTarget(self, action: #selector(toggleFilter(sender:)), for: .touchUpInside)
        
        let lifestealButton = UIButton(type: .roundedRect)
        if let state = filters[ItemAttribute.lifesteal] {
        lifestealButton.setTitle(titleForButton(isEnabled: state), for: .normal)
        }
        lifestealButton.tag = ItemAttribute.lifesteal.rawValue
        lifestealButton.addTarget(self, action: #selector(toggleFilter(sender:)), for: .touchUpInside)
        
        let physicalPowerCheckBox = UIStackView(title: "Physical\nPower", button: physicalPowerButton)
        let physicalArmorCheckBox = UIStackView(title: "Physical\nArmor", button: physicalArmorButton)
        let physicalPenetrationCheckBox = UIStackView(title: "Physical\nPenetration", button: physicalPenetrationButton)
        let energyPowerCheckBox = UIStackView(title: "Energy\nPower", button: energyPowerButton)
        let energyArmorCheckBox = UIStackView(title: "Energy\nArmor", button: energyArmorButton)
        let energyPenetrationCheckBox = UIStackView(title: "Energy\nPenetration", button: energyPenetrationButton)
        let healthCheckBox = UIStackView(title: "Health\n", button: healthButton)
        let healthRegenCheckBox = UIStackView(title: "Health\nRegen", button: healthRegenButton)
        let manaCheckBox = UIStackView(title: "Mana\n", button: manaButton)
        let manaRegenCheckBox = UIStackView(title: "Mana\nRegen", button: manaRegenButton)
        let cooldownCheckBox = UIStackView(title: "Cooldown\n", button: cooldownButton)
        let attackSpeedCheckBox = UIStackView(title: "Attack\nSpeed", button: attackSpeedButton)
        let moveSpeedCheckBox = UIStackView(title: "Movement\nSpeed", button: moveSpeedButton)
        let critChanceCheckBox = UIStackView(title: "Crit\nChance", button: critChanceButton)
        let lifestealCheckBox = UIStackView(title: "Lifesteal\n", button: lifestealButton)

        stackView1.addArrangedSubview(physicalPowerCheckBox)
        stackView1.addArrangedSubview(physicalArmorCheckBox)
        stackView1.addArrangedSubview(physicalPenetrationCheckBox)
        
        stackView2.addArrangedSubview(energyPowerCheckBox)
        stackView2.addArrangedSubview(energyArmorCheckBox)
        stackView2.addArrangedSubview(energyPenetrationCheckBox)
        
        stackView3.addArrangedSubview(healthCheckBox)
        stackView3.addArrangedSubview(healthRegenCheckBox)
        stackView3.addArrangedSubview(lifestealCheckBox)
        
        stackView4.addArrangedSubview(manaCheckBox)
        stackView4.addArrangedSubview(manaRegenCheckBox)
        stackView4.addArrangedSubview(cooldownCheckBox)
        
        stackView5.addArrangedSubview(attackSpeedCheckBox)
        stackView5.addArrangedSubview(critChanceCheckBox)
        stackView5.addArrangedSubview(moveSpeedCheckBox)
    }
    
    //TODO: Toggle based on passed in state
    @objc func toggleFilter(sender: UIButton) {
        if let itemAttribute = ItemAttribute(rawValue: sender.tag),
            var filterState = filters[itemAttribute] {
            filterState = !filterState
            filters[itemAttribute] = filterState
            
            if filterState {
                sender.setTitle("X", for: .normal)
            }
            else
            {
                sender.setTitle("O", for: .normal)
            }
            delegate?.didSelectFilter(selectedFilter: itemAttribute)
        }
    }
}
