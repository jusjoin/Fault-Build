//
//  ItemBuilderViewController.swift
//  Fault Build
//
//  Created by Zane on 8/22/20.
//  Copyright © 2020 JusDev Studios. All rights reserved.
//

import UIKit

class ItemBuilderViewController: BaseViewController {
    
    enum ItemBuilderTableSections: Int, CaseIterable {
        case stats
//        case passive
//        case lmbAbility
//        case qAbility
//        case eAbility
//        case rAbility
//        case rmbAbility
        
        var description: String {
            var description = ""
            switch self {
            case .stats:
                description = "Hero Stats"
                //            case .passive:
                //                description = "Passive Ability"
                //            case .lmbAbility:
                //                description = "Basic Attack (LMB)"
                //            case .qAbility:
                //                description = "Q Ability"
                //            case .eAbility:
                //                description = "E Ability"
                //            case .rAbility:
                //                description = "R Ability"
                //            case .rmbAbility:
                //                description = "Ultimate Abilty (RMB)"
            }
            
            return description
        }
    }
    
    var hero: Hero
    
    init(withHero hero: Hero) {
        self.hero = hero
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableHeader()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        sizeHeaderToFit()
    }
    
    func setupTableHeader() {
        let containerView = UITableViewHeaderFooterView()
        containerView.translatesAutoresizingMaskIntoConstraints = false;
        let imageView = UIImageView(image: UIImage(named: self.hero.bannerName))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        let headerView = UIView()
        headerView.translatesAutoresizingMaskIntoConstraints = false;
        headerView.addSubview(imageView)
        //            headerView.addSubview(label)
        containerView.addSubview(headerView)
        self.baseTableView.tableHeaderView = containerView
        
        let containerViewConstraints = [
            containerView.topAnchor.constraint(equalTo: self.baseTableView.topAnchor),
            containerView.widthAnchor.constraint(equalTo: self.baseTableView.widthAnchor),
            containerView.centerXAnchor.constraint(equalTo: self.baseTableView.centerXAnchor)
        ]
        NSLayoutConstraint.activate(containerViewConstraints)
        
        let headerViewConstraints = [
            headerView.topAnchor.constraint(equalTo: containerView.topAnchor),
            headerView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor),
            headerView.widthAnchor.constraint(equalTo: containerView.widthAnchor),
            headerView.centerXAnchor.constraint(equalTo: containerView.centerXAnchor)
        ]
        NSLayoutConstraint.activate(headerViewConstraints)
        
        let imageViewConstraints = [
            imageView.topAnchor.constraint(equalTo: headerView.topAnchor),
            imageView.centerXAnchor.constraint(equalTo: headerView.centerXAnchor),
            imageView.centerYAnchor.constraint(equalTo: headerView.centerYAnchor),
            imageView.heightAnchor.constraint(equalToConstant: 150),
            imageView.widthAnchor.constraint(equalTo: self.baseTableView.widthAnchor)
        ]
        NSLayoutConstraint.activate(imageViewConstraints)
    }
    
    func sizeHeaderToFit() {
        if let headerView = self.baseTableView.tableHeaderView {
            
            headerView.setNeedsLayout()
            headerView.layoutIfNeeded()
        }
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return ItemBuilderTableSections.allCases.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = FBTableViewCell(style: .subtitle, reuseIdentifier: "heroTableViewCell")
        cell.detailTextLabel?.numberOfLines = 0
        let row = ItemBuilderTableSections(rawValue: indexPath.section)
        switch row {
        case .stats:
            cell = HeroStatsTableViewCell(hero: self.hero, tableView: self.baseTableView, reuseIdentifier: nil)
            
        default:
            break
        }
        
        return cell
    }
    
}
