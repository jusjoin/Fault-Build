//
//  LMBAbilityTableViewCell.swift
//  Fault Build
//
//  Created by Zane on 8/19/20.
//  Copyright © 2020 JusDev Studios. All rights reserved.
//

import UIKit

class LMBAbilityTableViewCell: FBTableViewCell {

        var lmbAbility: LMBAbility
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
        
            
        init(lmbAbility: LMBAbility, tableView: UITableView, reuseIdentifier: String?) {
            self.lmbAbility = lmbAbility
            super.init(style: .default, reuseIdentifier: reuseIdentifier)
            self.imageView?.frame = CGRect(x: 0,y: 0,width: 80,height: 80)
            self.setupViews()
            self.populateLMBAbilityDataLabels()
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
//            self.stackView5.axis = .horizontal
//            self.stackView5.alignment = .center
//            self.stackView5.distribution = .fillEqually
            
    //        containerView.translatesAutoresizingMaskIntoConstraints = false
            self.stackView1.translatesAutoresizingMaskIntoConstraints = false
            self.stackView2.translatesAutoresizingMaskIntoConstraints = false
            self.stackView3.translatesAutoresizingMaskIntoConstraints = false
            self.stackView4.translatesAutoresizingMaskIntoConstraints = false
//            self.stackView5.translatesAutoresizingMaskIntoConstraints = false
            
    //        self.contentView.addSubview(containerView)
            self.contentView.addSubview(stackView1)
            self.contentView.addSubview(stackView2)
            self.contentView.addSubview(stackView3)
            self.contentView.addSubview(stackView4)
//            self.contentView.addSubview(stackView5)
            
    //        let containerViewConstraints = [
    //            containerView.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor),
    //            containerView.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor),
    //            containerView.topAnchor.constraint(equalTo: self.contentView.topAnchor),
    //            containerView.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor)
    //        ]
    //        NSLayoutConstraint.activate(containerViewConstraints)
            if let imageView = self.imageView {
                
                let imageViewConstraints = [
                    imageView.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor),
//                    imageView.topAnchor.constraint(equalTo: self.contentView.topAnchor),
                    imageView.centerYAnchor.constraint(equalTo: self.contentView.centerYAnchor),
                    imageView.heightAnchor.constraint(equalToConstant: 100),
                    imageView.widthAnchor.constraint(equalToConstant: 100),
                ]
                NSLayoutConstraint.activate(imageViewConstraints)
                
                let stackView1Constraints = [
                    stackView1.topAnchor.constraint(equalTo: self.contentView.topAnchor),
                    stackView1.leadingAnchor.constraint(equalTo: imageView.trailingAnchor),
                    stackView1.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor)
                ]
                NSLayoutConstraint.activate(stackView1Constraints)
                
                let stackView2Constraints = [
                    stackView2.topAnchor.constraint(equalTo: stackView1.bottomAnchor),
                    stackView2.leadingAnchor.constraint(equalTo: imageView.trailingAnchor),
                    stackView2.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor)
                ]
                NSLayoutConstraint.activate(stackView2Constraints)
                
                let stackView3Constraints = [
                    stackView3.topAnchor.constraint(equalTo: stackView2.bottomAnchor),
                    stackView3.leadingAnchor.constraint(equalTo: imageView.trailingAnchor),
                    stackView3.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor)
                ]
                NSLayoutConstraint.activate(stackView3Constraints)
                
                let stackView4Constraints = [
                    stackView4.topAnchor.constraint(equalTo: stackView3.bottomAnchor),
                    stackView4.leadingAnchor.constraint(equalTo: imageView.trailingAnchor),
                    stackView4.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor),
                    stackView4.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor)
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
        }
        
        func populateLMBAbilityDataLabels() {
            self.cooldownLabel.text = "Cooldown: " + String(self.lmbAbility.getCooldown())
            self.rangeLabel.text = "Range: " + String(format: "%.2f",self.lmbAbility.getRange())
            self.physicalDamageLabel.text = "Phys. Damage: " + String(self.lmbAbility.getPhysicalDamager())
            self.energyDamageLabel.text = "Energy Damage: " + String(self.lmbAbility.getEnergyDamage())
            self.attackSpeedPerLevelLabel.text = "AtkSpd/Level: " + String(self.lmbAbility.getAttackSpeedPerLevel())
            
            self.AdaptiveDamagePerLevelLabel.text = "Damage/Level: " + String(format: "%.2f",self.lmbAbility.getAdaptiveDamagePerLevel())
            self.scalingFactorLabel.text = "Scaling: " + String(self.lmbAbility.getScalingFactor())
            self.imageView?.image = UIImage(named: "GreenFactionLogo")
            self.imageView?.backgroundColor = .black
            self.imageView?.setNeedsLayout()
        }

    }
