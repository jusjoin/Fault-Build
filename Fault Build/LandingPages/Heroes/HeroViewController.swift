//
//  HeroViewController.swift
//  Fault Build
//
//  Created by Zane on 8/18/20.
//  Copyright © 2020 JusDev Studios. All rights reserved.
//

import UIKit

class HeroViewController: BaseViewController {
    
    enum HeroTableSections: Int, CaseIterable {
        case stats
        case passive
        case lmbAbility
        case qAbility
        case eAbility
        case rAbility
        case rmbAbility
        
        var description: String {
            var description = ""
            switch self {
            case .stats:
                description = "Hero Stats"
            case .passive:
                description = "Passive Ability"
            case .lmbAbility:
                description = "Basic Attack (LMB)"
            case .qAbility:
                description = "Q Ability"
            case .eAbility:
                description = "E Ability"
            case .rAbility:
                description = "R Ability"
            case .rmbAbility:
                description = "Ultimate Abilty (RMB)"
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
        setupRightBarButton()
        setupTableHeader()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        sizeHeaderToFit()
    }
    
    func setupRightBarButton() {
        let buildButton = UIBarButtonItem(title: "Build", style: .plain, target: self, action: #selector(navigateToBuildScreen(_:)))
        self.navigationItem.rightBarButtonItem = buildButton
    }
    
    func setupTableHeader() {
        let containerView = UITableViewHeaderFooterView()
        containerView.translatesAutoresizingMaskIntoConstraints = false;
        let imageView = UIImageView(image: UIImage(named: self.hero.bannerName))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        //            let label = UILabel()
        //            label.translatesAutoresizingMaskIntoConstraints = false;
        //            label.text = hero.name
        //            label.textColor = .black
        //            label.textAlignment = .center
        //            label.sizeToFit()
        
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
        
        //            let labelConstraints = [
        //                label.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 8),
        //                label.centerXAnchor.constraint(equalTo: headerView.centerXAnchor),
        //                label.bottomAnchor.constraint(equalTo: headerView.bottomAnchor)
        //            ]
        //            NSLayoutConstraint.activate(labelConstraints)
    }
    
    func sizeHeaderToFit() {
        if let headerView = self.baseTableView.tableHeaderView {
            
            headerView.setNeedsLayout()
            headerView.layoutIfNeeded()
        }
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return HeroTableSections.allCases.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = FBTableViewCell(style: .subtitle, reuseIdentifier: "heroTableViewCell")
        cell.detailTextLabel?.numberOfLines = 0
        let row = HeroTableSections(rawValue: indexPath.section)
        switch row {
        case .stats:
            cell = HeroStatsTableViewCell(hero: self.hero, tableView: self.baseTableView, reuseIdentifier: nil)
            
        case .passive:
            cell.textLabel?.text = self.hero.getPAbility().getName()
            cell.detailTextLabel?.text = self.hero.getPAbility().getDetails()
            hero.getAbilityImage(imageURL: self.hero.pAbilityImageURL, completion: { image in
                DispatchQueue.main.async {
                    guard let image = image else { return }
                    cell.imageView?.backgroundColor = .black
                    cell.imageView?.image = image
                    cell.setNeedsLayout()
                }
            })
            
        case .lmbAbility:
            cell = LMBAbilityTableViewCell(lmbAbility: self.hero.getLMBAbility(), tableView: self.baseTableView, reuseIdentifier: nil)
            
        case .qAbility:
            cell.textLabel?.text = self.hero.getQAbility().getName()
            cell.detailTextLabel?.text = self.hero.getQAbility().getDetails()
            hero.getAbilityImage(imageURL: self.hero.qAbilityImageURL, completion: { image in
                DispatchQueue.main.async {
                    guard let image = image else { return }
                    cell.imageView?.backgroundColor = .black
                    cell.imageView?.image = image
                    cell.setNeedsLayout()
                }
            })
            
        case .eAbility:
            cell.textLabel?.text = self.hero.getEAbility().getName()
            cell.detailTextLabel?.text = self.hero.getEAbility().getDetails()
            hero.getAbilityImage(imageURL: self.hero.eAbilityImageURL, completion: { image in
                DispatchQueue.main.async {
                    guard let image = image else { return }
                    cell.imageView?.backgroundColor = .black
                    cell.imageView?.image = image
                    cell.setNeedsLayout()
                }
            })
            
        case .rAbility:
            cell.textLabel?.text = self.hero.getRAbility().getName()
            cell.detailTextLabel?.text = self.hero.getRAbility().getDetails()
            hero.getAbilityImage(imageURL: self.hero.rAbilityImageURL, completion: { image in
                DispatchQueue.main.async {
                    guard let image = image else { return }
                    cell.imageView?.backgroundColor = .black
                    cell.imageView?.image = image
                    cell.setNeedsLayout()
                }
            })
            
        case .rmbAbility:
            cell.textLabel?.text = self.hero.getRMBAbility().getName()
            cell.detailTextLabel?.text = self.hero.getRMBAbility().getDetails()
            hero.getAbilityImage(imageURL: self.hero.rmbAbilityImageURL, completion: { image in
                DispatchQueue.main.async {
                    guard let image = image else { return }
                    cell.imageView?.backgroundColor = .black
                    cell.imageView?.image = image
                    cell.setNeedsLayout()
                }
            })
            
        default:
            break
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let containerView = UIView()
        let label = UILabel()
        containerView.addSubview(label)
        //        let containerViewConstraints = [
        //            containerView.topAnchor.constraint(equalTo: containerView.superview.topAnchor, constant: 5),
        //            containerView.bottomAnchor.constraint(equalTo: containerView.topAnchor, constant: 5),
        //            containerView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 5),
        //            containerView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: 5)
        //        ]
        let labelConstraints = [
            label.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 5),
            label.bottomAnchor.constraint(equalTo: containerView.topAnchor, constant: 5),
            label.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 5),
            label.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: 5)
        ]
        NSLayoutConstraint.activate(labelConstraints)
        
        label.textAlignment = .center
        let sectionType = HeroTableSections(rawValue: section)
        label.text = sectionType?.description
        
        return label
    }
    
    @objc func navigateToBuildScreen(_ sender: Any) {
        let buildViewController = ItemBuilderViewController(withHero: self.hero)
        self.navigationController?.pushViewController(buildViewController, animated: true)
    }
}
