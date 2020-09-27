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
        case heroBanner
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
            default:
                break
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
        self.navigationItem.title = self.hero.name
        setupRightBarButton()
    }
    
    func setupRightBarButton() {
        let buildButton = UIBarButtonItem(title: "Build", style: .plain, target: self, action: #selector(navigateToBuildScreen(_:)))
        self.navigationItem.rightBarButtonItem = buildButton
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
        case .heroBanner:
            if let bannerImage = UIImage(named: self.hero.bannerName) {
                cell = CellFactory.createBannerImageViewCell(image: bannerImage)
            }
            
        case .stats:
            cell = HeroStatsTableViewCell(hero: self.hero, tableView: self.tableView, reuseIdentifier: nil, showAllStats: false)
            
        case .passive:
            cell.textLabel?.text = self.hero.getPAbility().getName()
            cell.detailTextLabel?.text = self.hero.getPAbility().getDetails()
            cell.imageView?.image =  #imageLiteral(resourceName: "FaultLogo").scaledToWidth(width: 50)
            FaultBuildHelper.getImage(imageURL: self.hero.pAbilityImageURL, completion: { image in
                DispatchQueue.main.async {
                    guard let image = image else { return }
                    cell.imageView?.backgroundColor = .black
                    cell.imageView?.image = image.scaledToWidth(width: 50)
                    cell.setNeedsLayout()
                }
            })
            
        case .lmbAbility:
            cell = LMBAbilityTableViewCell(hero: self.hero, tableView: self.tableView, reuseIdentifier: "LMBCell")
            
        case .qAbility:
            cell.textLabel?.text = self.hero.getQAbility().getName()
            cell.detailTextLabel?.text = self.hero.getQAbility().getDetails()
            cell.imageView?.image =  #imageLiteral(resourceName: "FaultLogo").scaledToWidth(width: 50)
            FaultBuildHelper.getImage(imageURL: self.hero.qAbilityImageURL, completion: { image in
                DispatchQueue.main.async {
                    guard let image = image else { return }
                    cell.imageView?.backgroundColor = .black
                    cell.imageView?.image = image.scaledToWidth(width: 50)
                    cell.setNeedsLayout()
                }
            })
            
        case .eAbility:
            cell.textLabel?.text = self.hero.getEAbility().getName()
            cell.detailTextLabel?.text = self.hero.getEAbility().getDetails()
            cell.imageView?.image =  #imageLiteral(resourceName: "FaultLogo").scaledToWidth(width: 50)
            FaultBuildHelper.getImage(imageURL: self.hero.eAbilityImageURL, completion: { image in
                DispatchQueue.main.async {
                    guard let image = image else { return }
                    cell.imageView?.backgroundColor = .black
                    cell.imageView?.image = image.scaledToWidth(width: 50)
                    cell.setNeedsLayout()
                }
            })
            
        case .rAbility:
            cell.textLabel?.text = self.hero.getRAbility().getName()
            cell.detailTextLabel?.text = self.hero.getRAbility().getDetails()
            cell.imageView?.image =  #imageLiteral(resourceName: "FaultLogo").scaledToWidth(width: 50)
            FaultBuildHelper.getImage(imageURL: self.hero.rAbilityImageURL, completion: { image in
                DispatchQueue.main.async {
                    guard let image = image else { return }
                    cell.imageView?.backgroundColor = .black
                    cell.imageView?.image = image.scaledToWidth(width: 50)
                    cell.setNeedsLayout()
                }
            })
            
        case .rmbAbility:
            cell.textLabel?.text = self.hero.getRMBAbility().getName()
            cell.detailTextLabel?.text = self.hero.getRMBAbility().getDetails()
            cell.imageView?.image =  #imageLiteral(resourceName: "FaultLogo").scaledToWidth(width: 50)
            FaultBuildHelper.getImage(imageURL: self.hero.rmbAbilityImageURL, completion: { image in
                DispatchQueue.main.async {
                    guard let image = image else { return }
                    cell.imageView?.backgroundColor = .black
                    cell.imageView?.image = image.scaledToWidth(width: 50)
                    cell.setNeedsLayout()
                }
            })
            
        default:
            break
        }
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        if section != HeroTableSections.stats.rawValue {
            if let sectionType = HeroTableSections(rawValue: section) {
                return setupSectionHeaderLabel(title: sectionType.description)
            }
        }
        return nil
    }

    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if section == HeroTableSections.heroBanner.rawValue ||
            section == HeroTableSections.stats.rawValue {
            return 0
        }
        return UITableView.automaticDimension
    }
    
    @objc func navigateToBuildScreen(_ sender: Any) {
        let buildViewController = ItemBuilderViewController(withHero: self.hero)
        self.navigationController?.pushViewController(buildViewController, animated: true)
    }
}
