//
//  AffinityLevelTableViewCell.swift
//  Fault Build
//
//  Created by Zane on 9/5/20.
//  Copyright © 2020 JusDev Studios. All rights reserved.
//

import UIKit

protocol AffinityLevelTableViewCellDelegate {
    func didSelectAffinity1()
    func didSelectAffinity2()
    func didIncreaseAffinity1()
    func didDecreaseAffinity1()
    func didIncreaseAffinity2()
    func didDecreaseAffinity2()
}

class AffinityLevelTableViewCell: FBTableViewCell {

    let affinity1IncreaseButton: UIButton = {
       let button = UIButton(type: .roundedRect)
        button.setTitle("+", for: .normal)
        return button
    }()
    
    let affinity1DecreaseButton: UIButton = {
       let button = UIButton(type: .roundedRect)
        button.setTitle("-", for: .normal)
        return button
    }()
    
    let affinity2IncreaseButton: UIButton = {
       let button = UIButton(type: .roundedRect)
        button.setTitle("+", for: .normal)
        return button
    }()
    
    let affinity2DecreaseButton: UIButton = {
        let button = UIButton(type: .roundedRect)
        button.setTitle("-", for: .normal)
        return button
    }()
    
    let affinity1ImageButton = UIButton(type: .custom)
    let affinity2ImageButton = UIButton(type: .custom)
    let affinity1RankLabel = UILabel()
    let affinity2RankLabel = UILabel()
    var affinity1: ItemAffinity?
    var affinity1Rank = 0
    var affinity2: ItemAffinity?
    var affinity2Rank = 0
    var delegate: AffinityLevelTableViewCellDelegate?
    
    init(
        tableView: UITableView,
        delegate: AffinityLevelTableViewCellDelegate,
        affinity1: ItemAffinity?,
        affinity1Rank: Int?,
        affinity2: ItemAffinity?,
        affinity2Rank: Int?) {
        super.init(style: .default, reuseIdentifier: "AffinityLevelTableViewCell")
        self.delegate = delegate
        self.affinity1 = affinity1
        self.affinity1Rank = affinity1Rank ?? 0
        self.affinity2 = affinity2
        self.affinity2Rank = affinity2Rank ?? 0
        self.setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews() {
        affinity1RankLabel.text = "\(self.affinity1Rank)"
        affinity1RankLabel.textAlignment = .center
        affinity2RankLabel.text = "\(affinity2Rank)"
        affinity2RankLabel.textAlignment = .center
        
        affinity1IncreaseButton.addTarget(self, action: #selector(affinity1IncreaseButtonTapped), for: .touchUpInside)
        affinity1IncreaseButton.addTarget(self, action: #selector(affinity1DecreaseButtonTapped), for: .touchUpInside)
        affinity1IncreaseButton.addTarget(self, action: #selector(affinity2IncreaseButtonTapped), for: .touchUpInside)
        affinity1IncreaseButton.addTarget(self, action: #selector(affinity2DecreaseButtonTapped), for: .touchUpInside)
        
        let affinity1Image = self.affinity1?.image ?? UIImage(named: "FaultFactionLogo")
        affinity1ImageButton.setImage(affinity1Image?.resize(scaledToSize: CGSize(width: 50, height: 50)), for: .normal)
        affinity1ImageButton.backgroundColor = affinity1?.color()
        affinity1ImageButton.addTarget(self, action: #selector(affinity1ImageButtonTapped), for: .touchUpInside)
        
        let affinity2Image = self.affinity2?.image ?? UIImage(named: "FaultFactionLogo")
        affinity2ImageButton.setImage(affinity2Image?.resize(scaledToSize: CGSize(width: 50, height: 50)), for: .normal)
        affinity2ImageButton.backgroundColor = affinity2?.color()
        affinity2ImageButton.addTarget(self, action: #selector(affinity2ImageButtonTapped), for: .touchUpInside)
        
        let containerView = UIView()
        containerView.translatesAutoresizingMaskIntoConstraints = false
        let affinity1StackView = UIStackView()
        affinity1StackView.translatesAutoresizingMaskIntoConstraints = false
        affinity1StackView.axis = .vertical
        affinity1StackView.distribution = .fillProportionally
        let affinity1ControlsStackView = UIStackView()
        affinity1ControlsStackView.translatesAutoresizingMaskIntoConstraints = false
        affinity1ControlsStackView.axis = .horizontal
        affinity1ControlsStackView.distribution = .fillProportionally
        let affinity2StackView = UIStackView()
        affinity2StackView.translatesAutoresizingMaskIntoConstraints = false
        affinity2StackView.axis = .vertical
        affinity2StackView.distribution = .fillProportionally
        let affinity2ControlsStackView = UIStackView()
        affinity2ControlsStackView.translatesAutoresizingMaskIntoConstraints = false
        affinity2ControlsStackView.axis = .horizontal
        affinity2ControlsStackView.distribution = .fillProportionally
        
        self.contentView.addSubview(containerView)
        containerView.addSubview(affinity1StackView)
        containerView.addSubview(affinity2StackView)
        affinity1StackView.addArrangedSubview(affinity1ImageButton)
        affinity1StackView.addArrangedSubview(affinity1ControlsStackView)
        affinity1ControlsStackView.addArrangedSubview(affinity1DecreaseButton)
        affinity1ControlsStackView.addArrangedSubview(affinity1RankLabel)
        affinity1ControlsStackView.addArrangedSubview(affinity1IncreaseButton)
        affinity2StackView.addArrangedSubview(affinity2ImageButton)
        affinity2StackView.addArrangedSubview(affinity2ControlsStackView)
        affinity2ControlsStackView.addArrangedSubview(affinity2DecreaseButton)
        affinity2ControlsStackView.addArrangedSubview(affinity2RankLabel)
        affinity2ControlsStackView.addArrangedSubview(affinity2IncreaseButton)
        
        let containerViewConstraints = [
            containerView.centerXAnchor.constraint(equalTo: self.contentView.centerXAnchor),
            containerView.topAnchor.constraint(equalTo: self.contentView.topAnchor),
            containerView.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor)
        ]
        NSLayoutConstraint.activate(containerViewConstraints)
        
        let affinity1StackViewConstraints = [
        affinity1StackView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
        affinity1StackView.topAnchor.constraint(equalTo: containerView.topAnchor),
        affinity1StackView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor)
        ]
        NSLayoutConstraint.activate(affinity1StackViewConstraints)
        
        let affinity2StackViewConstraints = [
        affinity2StackView.leadingAnchor.constraint(equalTo: affinity1StackView.trailingAnchor, constant: 10),
        affinity2StackView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor),
        affinity2StackView.topAnchor.constraint(equalTo: containerView.topAnchor),
        affinity2StackView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor)
        ]
        NSLayoutConstraint.activate(affinity2StackViewConstraints)
    }

    @objc func affinity1ImageButtonTapped() {
        delegate?.didSelectAffinity1()
    }
    
    @objc func affinity1IncreaseButtonTapped() {
        delegate?.didDecreaseAffinity1()
    }
    
    @objc func affinity1DecreaseButtonTapped() {
        delegate?.didDecreaseAffinity1()
    }
    
    @objc func affinity2ImageButtonTapped() {
        delegate?.didSelectAffinity2()
    }
    
    @objc func affinity2IncreaseButtonTapped() {
        delegate?.didIncreaseAffinity2()
    }
    
    @objc func affinity2DecreaseButtonTapped() {
        delegate?.didDecreaseAffinity2()
    }
}
