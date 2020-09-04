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
        case heroBanner
        case stats
        case buildItems
        case allItems
        
        var description: String {
            var description = ""
            switch self {
            case .buildItems:
                description = "Build Items"
                
            case .allItems:
                description = "All Items"
                
            default:
                break
            }
            
            return description
        }
    }
    
    var hero: Hero
    let numberOfItemsInBuild: Int = 6
    var buildItems = [GameItem]()
    
    init(withHero hero: Hero) {
        self.hero = hero
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Build"
        self.navigationItem.rightBarButtonItem?.title = "Save/Load"
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
    }
    
    //TODO: Create an affinity slider cell which has slider in content view and a button for imageView which allows selecting affinity in popup
    //TODO: Plus and minus buttons on either side of affinity slider? Maybe add this to level slider as well?
    //TODO: Create a popup which allows selecting affinity
    //TODO: On did select row in all items section allow adding to build with popup, check for number allowed per build
    //TODO: On did select row in build items section if cell is populated allow removing from build in popup
    //TODO: Add search bar and filter items in all items section
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return ItemBuilderTableSections.allCases.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let section = ItemBuilderTableSections(rawValue: section)
        var rows = 1
        switch section {
        case .buildItems:
            rows = numberOfItemsInBuild
            
        case .allItems:
            break
            
        default:
            break
        }
        
        return rows
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = FBTableViewCell(style: .subtitle, reuseIdentifier: "heroTableViewCell")
        cell.detailTextLabel?.numberOfLines = 0
        let section = ItemBuilderTableSections(rawValue: indexPath.section)
        switch section {
        case .heroBanner:
        if let bannerImage = UIImage(named: self.hero.bannerName) {
            cell = CellFactory.createBannerImageViewCell(image: bannerImage)
        }
            
        case .stats:
            cell = HeroStatsTableViewCell(hero: self.hero, tableView: self.tableView, reuseIdentifier: nil)
        
        case .buildItems:
            //TODO: Default cell for items if no items in build or display items in build
            break
            
        case .allItems:
            //TODO: Add items grouped as in item list tableview
            break
        
        default:
            break
        }
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        let tableSection = ItemBuilderTableSections(rawValue: section)
        if tableSection == .heroBanner || tableSection == .stats {
            return 0
        }
        return UITableView.automaticDimension
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        var title = ""
        if let tableSection = ItemBuilderTableSections(rawValue: section) {
            switch tableSection {
            case .buildItems:
                title = ItemBuilderTableSections.buildItems.description
                
            case .allItems:
                title = ItemBuilderTableSections.allItems.description
                
            default:
                break
            }
        }
        return title == "" ? nil : title
    }
    
}
