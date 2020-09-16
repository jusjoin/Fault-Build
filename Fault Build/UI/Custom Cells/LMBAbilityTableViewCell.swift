//
//  LMBAbilityTableViewCell.swift
//  Fault Build
//
//  Created by Zane on 8/19/20.
//  Copyright © 2020 JusDev Studios. All rights reserved.
//

import UIKit

class LMBAbilityTableViewCell: FBTableViewCell {
    
    var hero: Hero
//    var imageView = UIImageView()
    let stackView1 = UIStackView()
    let stackView2 = UIStackView()
    let stackView3 = UIStackView()
    let stackView4 = UIStackView()
    //        let stackView5 = UIStackView()
    let cooldownLabel = UILabel()
    let rangeLabel = UILabel()
    let physicalDamageLabel = UILabel()
    let energyDamageLabel = UILabel()
    let attackSpeedPerLevelLabel = UILabel()
    let AdaptiveDamagePerLevelLabel = UILabel()
    let scalingFactorLabel = UILabel()
    //        let basicAttackLabel = UILabel()
    //        let attackSpeedLabel = UILabel()
    
    
    init(hero: Hero, tableView: UITableView, reuseIdentifier: String?) {
        self.hero = hero
        super.init(style: .default, reuseIdentifier: reuseIdentifier)
        self.populateLMBAbilityDataLabels()
        self.setupViews()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews() {
        let containerView = UIView()
        let stackContainerView = UIStackView()
        stackContainerView.axis = .vertical
        stackContainerView.alignment = .center
        stackContainerView.distribution = .fillEqually
        stackContainerView.spacing = 5
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
        self.stackView4.alignment = .leading
        self.stackView4.distribution = .fillEqually
        //            self.stackView5.axis = .horizontal
        //            self.stackView5.alignment = .center
        //            self.stackView5.distribution = .fillEqually
        
        containerView.translatesAutoresizingMaskIntoConstraints = false
        stackContainerView.translatesAutoresizingMaskIntoConstraints = false
//        self.imageView.translatesAutoresizingMaskIntoConstraints = false
        self.stackView1.translatesAutoresizingMaskIntoConstraints = false
        self.stackView2.translatesAutoresizingMaskIntoConstraints = false
        self.stackView3.translatesAutoresizingMaskIntoConstraints = false
        self.stackView4.translatesAutoresizingMaskIntoConstraints = false
        //            self.stackView5.translatesAutoresizingMaskIntoConstraints = false
        
        //            self.contentView.addSubview(containerView)
        self.contentView.addSubview(containerView)
        containerView.addSubview(stackContainerView)
        stackContainerView.addArrangedSubview(stackView1)
        stackContainerView.addArrangedSubview(stackView2)
        stackContainerView.addArrangedSubview(stackView3)
        stackContainerView.addArrangedSubview(stackView4)
        //            self.contentView.addSubview(stackView5)
        
        let containerViewConstraints = [
            containerView.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor),
            containerView.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor),
            containerView.topAnchor.constraint(equalTo: self.contentView.topAnchor),
            containerView.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor)
        ]
        NSLayoutConstraint.activate(containerViewConstraints)
        
        if let imageView = self.imageView {
            imageView.contentMode = .center
            containerView.addSubview(imageView)
            let stackContainerViewConstraints = [
                stackContainerView.leadingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: 16),
                stackContainerView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor),
                stackContainerView.topAnchor.constraint(equalTo: containerView.topAnchor),
                stackContainerView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor)
            ]
            NSLayoutConstraint.activate(stackContainerViewConstraints)
        }
        
//        let imageViewConstraints = [
//            self.imageView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 20),
//            self.imageView.centerYAnchor.constraint(equalTo: containerView.centerYAnchor)
//        ]
//        NSLayoutConstraint.activate(imageViewConstraints)
        
        let stackView1Constraints = [
//            stackView1.topAnchor.constraint(equalTo: stackContainerView.topAnchor),
            stackView1.leadingAnchor.constraint(equalTo: stackContainerView.leadingAnchor),
            stackView1.trailingAnchor.constraint(equalTo: stackContainerView.trailingAnchor)
        ]
        NSLayoutConstraint.activate(stackView1Constraints)
        
        let stackView2Constraints = [
//            stackView2.topAnchor.constraint(equalTo: stackView1.bottomAnchor),
            stackView2.leadingAnchor.constraint(equalTo: stackContainerView.leadingAnchor),
            stackView2.trailingAnchor.constraint(equalTo: stackContainerView.trailingAnchor)
        ]
        NSLayoutConstraint.activate(stackView2Constraints)
        
        let stackView3Constraints = [
//            stackView3.topAnchor.constraint(equalTo: stackView2.bottomAnchor),
            stackView3.leadingAnchor.constraint(equalTo: stackContainerView.leadingAnchor),
            stackView3.trailingAnchor.constraint(equalTo: stackContainerView.trailingAnchor)
        ]
        NSLayoutConstraint.activate(stackView3Constraints)
        
        let stackView4Constraints = [
//            stackView4.topAnchor.constraint(equalTo: stackView3.bottomAnchor),
            stackView4.leadingAnchor.constraint(equalTo: stackContainerView.leadingAnchor),
            stackView4.trailingAnchor.constraint(equalTo: stackContainerView.trailingAnchor)
//            stackView4.bottomAnchor.constraint(equalTo: stackContainerView.bottomAnchor)
        ]
        NSLayoutConstraint.activate(stackView4Constraints)
        
        //            let stackView5Constraints = [
        //                stackView5.topAnchor.constraint(equalTo: stackView4.bottomAnchor),
        //                stackView5.centerXAnchor.constraint(equalTo: self.contentView.centerXAnchor),
        //                stackView5.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor)
        //            ]
        //            NSLayoutConstraint.activate(stackView5Constraints)
        
        stackView1.addArrangedSubview(cooldownLabel)
        stackView1.addArrangedSubview(rangeLabel)
        stackView2.addArrangedSubview(physicalDamageLabel)
        stackView2.addArrangedSubview(energyDamageLabel)
        stackView3.addArrangedSubview(attackSpeedPerLevelLabel)
        stackView3.addArrangedSubview(AdaptiveDamagePerLevelLabel)
        stackView4.addArrangedSubview(scalingFactorLabel)
        //            stackView4.addArrangedSubview(basicAttackLabel)
        //            stackView4.addArrangedSubview(attackSpeedLabel)
        //            stackView5.addArrangedSubview(attackSpeedPerLevelLabel)
    }
    
    func populateLMBAbilityDataLabels() {
        self.cooldownLabel.text = "Cooldown: " + String(hero.getLMBAbility().getCooldown())
        self.rangeLabel.text = "Range: " + String(format: "%.2f",hero.getLMBAbility().getRange())
        self.physicalDamageLabel.text = "Phys. Damage: " + String(hero.getLMBAbility().getPhysicalDamager())
        self.energyDamageLabel.text = "Energy Damage: " + String(hero.getLMBAbility().getEnergyDamage())
        self.attackSpeedPerLevelLabel.text = "AtkSpd/Level: " + String(hero.getLMBAbility().getAttackSpeedPerLevel())
        
        self.AdaptiveDamagePerLevelLabel.text = "Damage/Level: " + String(format: "%.2f",hero.getLMBAbility().getAdaptiveDamagePerLevel())
        self.scalingFactorLabel.text = "Scaling: " + String(hero.getLMBAbility().getScalingFactor())
        
        //Any hero could be used here
        FaultBuildHelper.getAbilityImage(imageURL: self.hero.lmbAbilityImageURL, completion: { image in
            DispatchQueue.main.async {
                guard let image = image else { return }
                if let imageView = self.imageView {
                    imageView.image = image.scaledToWidth(width: 50)
                    imageView.backgroundColor = .black
                }
                self.setupViews()
                self.setNeedsLayout()
            }
        })
    }
    
}
