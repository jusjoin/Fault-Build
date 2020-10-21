//
//  ItemBuilderViewController.swift
//  Fault Build
//
//  Created by Zane on 8/22/20.
//  Copyright © 2020 JusDev Studios. All rights reserved.
//

import UIKit

protocol ItemBuilderDelegate {
    func updateHeroStats()
}

class ItemBuilderViewController: BaseViewController {
    
    enum ItemBuilderTableSections: Int, CaseIterable {
        case heroBanner
        case stats
        case affinity
        case buildItems
        
        var description: String {
            var description = ""
            switch self {
            case .buildItems:
                description = "Build Items"
                
            default:
                break
            }
            
            return description
        }
    }
    
    var hero: Hero
    let numberOfItemsInBuild: Int = 6
    var buildItems = [GameItem]()
    var selectedItem = -1
    var affinity1 = ItemAffinity.none
    var affinity1Rank = 0
    var affinity2 = ItemAffinity.none
    var affinity2Rank = 0
    var heroStats: ItemBuilderDelegate?
    var shouldReloadAffinitySection = false
    
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
        self.setupRightBarButton()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        if self.shouldReloadAffinitySection {
            self.tableView.reloadSections(IndexSet([ItemBuilderTableSections.affinity.rawValue]), with: .fade)
            self.shouldReloadAffinitySection = false
        }
    }
    
    func setupRightBarButton() {
        let saveBuildButton = UIBarButtonItem(title: "Save", style: .plain, target: self, action: #selector(saveBuild(_:)))
        self.navigationItem.rightBarButtonItem = saveBuildButton
    }
    
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return ItemBuilderTableSections.allCases.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let section = ItemBuilderTableSections(rawValue: section)
        var rows = 1
        switch section {
        case .buildItems:
            rows = numberOfItemsInBuild
            
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
            cell = HeroStatsTableViewCell(hero: self.hero, tableView: self.tableView, reuseIdentifier: nil, itemBuilder: self, showAllStats: true)
            if let delegate = cell as? ItemBuilderDelegate {
                self.heroStats = delegate
            }
            
        case .affinity:
            cell = AffinityLevelTableViewCell(
                tableView: self.tableView,
                delegate: self,
                affinity1: self.affinity1,
                affinity1Rank: self.affinity1Rank,
                affinity2: self.affinity2,
                affinity2Rank: self.affinity2Rank
            )
            
        case .buildItems:
            if buildItems.indices.contains(indexPath.row) {
                cell = CellFactory.createBasicItemCell(gameItem: buildItems[indexPath.row])
            }
            else {
                cell.textLabel?.text = "Add item from all items section."
            }
            if indexPath.row > buildItems.count {
                cell.isUserInteractionEnabled = false
            }
        
        default:
            break
        }
        
        self.tableView.deselectRow(at: indexPath, animated: false)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
        if indexPath.section == ItemBuilderTableSections.buildItems.rawValue {
            let itemListViewController = ItemListViewController()
            itemListViewController.delegate = self
            self.selectedItem = indexPath.row
            self.navigationController?.pushViewController(itemListViewController, animated: true)
        }
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        let tableSection = ItemBuilderTableSections(rawValue: section)
        if tableSection == .heroBanner || tableSection == .stats || tableSection == .affinity {
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
                
            default:
                break
            }
        }
        return title == "" ? nil : title
    }
    
    override func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        if buildItems.indices.contains(indexPath.row) {
            let deleteActionTitle = "Delete"
            let detailActionTitle = "Details"
            let deleteAction = UIContextualAction(style: .normal
                , title: deleteActionTitle, handler: { (action, view, completionHandler) in
                    self.deleteAction(itemIndex: indexPath.row)
            })
            let renameAction = UIContextualAction(style: .normal
                , title: detailActionTitle, handler: {(action, view, completionHandler) in
                    self.navigateToItemDetails(gameItem: self.buildItems[indexPath.row])
            })
            deleteAction.backgroundColor = .red
            renameAction.backgroundColor = .green
            return UISwipeActionsConfiguration(actions: [deleteAction, renameAction])
        }
        return nil
        
    }
    
    func reloadItems() {
        let sectionToReload = IndexSet([ItemBuilderTableSections.buildItems.rawValue])
        self.tableView.reloadSections(sectionToReload, with: .fade)
    }
    
    func deleteAction(itemIndex: Int) {
        self.buildItems.remove(at: itemIndex)
        self.reloadItems()
        heroStats?.updateHeroStats()
        //TODO:Update build stats based on deleted items
    }
    
    func navigateToItemDetails(gameItem: GameItem) {
        let itemViewController = ItemViewController(item: gameItem)
        self.navigationController?.pushViewController(itemViewController, animated: true)
    }
}

extension ItemBuilderViewController: SelectAffinityDelegate {
    func didSelectAffinity(selectedAffinity: ItemAffinity, affinityNumber: Int) {
        switch affinityNumber {
        case 1:
            self.affinity1 = selectedAffinity
            
        case 2:
            self.affinity2 = selectedAffinity
            
        default:
            break
        }
        self.shouldReloadAffinitySection = true
        heroStats?.updateHeroStats()
    }
}

extension ItemBuilderViewController: AffinityLevelTableViewCellDelegate {
    func didSelectAffinity1() {
        let selectAffinityViewController = SelectAffinityViewController(delegate: self, affinityNumber: 1, affinity: self.affinity1)
        self.navigationController?.pushViewController(selectAffinityViewController, animated: true)
    }
    
    func didSelectAffinity2() {
        let selectAffinityViewController = SelectAffinityViewController(delegate: self, affinityNumber: 2, affinity: self.affinity2)
        self.navigationController?.pushViewController(selectAffinityViewController, animated: true)
    }
    
    func didUpdateAffinity1(rank: Int) {
        self.affinity1Rank = rank
        heroStats?.updateHeroStats()
    }
    
    func didUpdateAffinity2(rank: Int) {
        self.affinity2Rank = rank
        heroStats?.updateHeroStats()
    }
    
    @objc func saveBuild(_ sender: Any) {
        var itemArray = [String]()
        for item in buildItems {
            itemArray.append(item.itemID)
        }
        let itemBuild = ItemBuild(
            buildID: "1",
            characterID: "1",
            items: itemArray,
            affinity1: 1,
            affinity1Level: self.affinity1Rank,
            affinity2: 2,
            affinity2Level: self.affinity2Rank
        )
        
        FaultCoreDataManager.shared.saveItemBuild(itemBuild: itemBuild)
    }
}

extension ItemBuilderViewController: ItemListViewDelegate {
    func didSelectItem(gameItem: GameItem) {
        if buildItems.indices.contains(selectedItem) {
            buildItems[selectedItem] = gameItem
        }
        else {
            buildItems.append(gameItem)
        }
        heroStats?.updateHeroStats()
        self.reloadItems()
    }
}

extension ItemBuilderViewController: HeroStatsDelegate {
    func getBuildItems() -> [GameItem] {
        return self.buildItems
    }
    
    func getAffinities() -> [ItemAffinity : Int] {
        var affinities = [ItemAffinity: Int]()
        affinities[affinity1] = self.affinity1Rank
        affinities[affinity2] = self.affinity2Rank
        return affinities
    }
    
    
}

