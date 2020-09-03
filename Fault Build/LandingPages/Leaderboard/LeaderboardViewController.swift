//
//  LeaderboardViewController.swift
//  Fault Build
//
//  Created by Zane on 8/2/20.
//  Copyright © 2020 JusDev Studios. All rights reserved.
//

import UIKit

class LeaderboardViewController: BaseViewController {
    private let comingSoonLabel:UILabel = {
        let label = UILabel()
        label.text = "Coming Soon"
        label.textColor = .red
        label.font = UIFont.preferredFont(forTextStyle: .headline)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.mainContentView.addSubview(comingSoonLabel)
//        self.setupComingSoon()
    }
    
//    func setupComingSoon() {
//        comingSoonLabel.topAnchor.constraint(equalTo: self.mainContentView.topAnchor, constant: 80).isActive = true
//        comingSoonLabel.leadingAnchor.constraint(equalTo: self.mainContentView.leadingAnchor, constant: 20).isActive = true
//        comingSoonLabel.trailingAnchor.constraint(equalTo: self.mainContentView.trailingAnchor, constant: -20).isActive = true
//        self.mainContentView.centerYAnchor.constraint(equalTo: self.mainContentView.centerYAnchor).isActive = true
//        self.mainContentView.centerXAnchor.constraint(equalTo: self.self.mainContentView.centerXAnchor).isActive = true
//    }

}
