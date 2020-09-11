//
//  ItemsViewController.swift
//  Fault Build
//
//  Created by Zane on 8/2/20.
//  Copyright © 2020 JusDev Studios. All rights reserved.
//

import UIKit

protocol ItemListViewDelegate {
    func didSelectItem(gameItem: GameItem)
}

class ItemListViewController: BaseViewController {
    enum ItemListViewSections: Int, CaseIterable {
        case filters
        case consumableItems
        case blueItems
        case redItems
        case purpleItems
        case greenItems
        case whiteItems
        case neutralItems
        case baseItems
        
        var description : String {
            switch self {
            case .filters:
                return "Filters"
            case .consumableItems:
                return "Consumable Items"
            case .blueItems:
                return "Blue Items"
            case .redItems:
                return "Red Items"
            case .purpleItems:
                return "Purple Items"
            case .greenItems:
                return "Green Items"
            case .whiteItems:
                return "White Items"
            case .neutralItems:
                return "Neutral Items"
            case .baseItems:
                return "Base Items"
            }
        }
    }
    
    var filters: [ItemAttribute: Bool] = [
        .ouchPower: false,
        .ouchieArmor: false,
        .ouchiePenetration: false,
        .zapPower: false,
        .sizzleArmor: false,
        .sizzlePenetration: false,
        .health: false,
        .healthRegenRate: false,
        .mana: false,
        .manaRegenRate: false,
        .pctDR: false,
        .attackSpeed: false,
        .movementSpeed: false,
        .critChance: false,
        .lifesteal: false
    ]
    
    var delegate: ItemListViewDelegate?
    
    init() {
        super.init(nibName: nil, bundle: nil)
        if(FaultDataRepository.shared.getGameItems().count == 0)
        {
            FaultDataRepository.shared.updateGameItems(completion: { [weak self] in
                if let self = self {
                    DispatchQueue.main.async {
                        self.reloadTableView()
                    }
                }
            })
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupNavigationBar()
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = UITableViewCell(style: .subtitle, reuseIdentifier: nil)
        let section = ItemListViewSections(rawValue: indexPath.section)
        switch section {
        case .filters:
            cell = ItemFilterTableViewCell(tableView: self.tableView, reuseIdentifier: nil, filters: self.filters)
            if let filterCell = cell as? ItemFilterTableViewCell {
                filterCell.delegate = self
            }
            
        default:
            var itemDictionary = [String: [GameItem]]()
            if self.getActiveFilters().count > 0 || self.isSearchingByName() {
                itemDictionary = FaultDataRepository.shared.getFilteredGameItemsFactionDictionary()
            }
            else {
                itemDictionary = FaultDataRepository.shared.getGameItemsFactionDictionary()
            }
            
            if let itemGroup = ItemListViewSections(rawValue: indexPath.section)?.description,
                let itemDictionaryForSection = itemDictionary[itemGroup] {
                if itemDictionaryForSection.count > 0 {
                    cell = CellFactory.createBasicItemCell(gameItem: itemDictionaryForSection[indexPath.row])
                }
                else {
                    cell.detailTextLabel?.text = "No items for this category"
                }
            }
        }
        
        return cell
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return ItemListViewSections.allCases.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        var title = ""
        if let tableSection = ItemListViewSections(rawValue: section){
            title = tableSection.description
        }
        
        return title
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        var rows = 0
        if section == ItemListViewSections.filters.rawValue  {
            rows = 1
        }
        else {
            var itemDictionary = [String: [GameItem]]()
            if self.getActiveFilters().count > 0 || self.isSearchingByName() {
                itemDictionary = FaultDataRepository.shared.getFilteredGameItemsFactionDictionary()
            }
            else {
                itemDictionary = FaultDataRepository.shared.getGameItemsFactionDictionary()
            }
            if let gameItemType = ItemListViewSections(rawValue: section)?.description,
                let count = itemDictionary[gameItemType]?.count {
                rows = count > 0 ? count : 1
            }
        }
        return rows
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.tableView.deselectRow(at: indexPath, animated: true)
        var itemDictionary = [String: [GameItem]]()
        if self.getActiveFilters().count > 0 || self.isSearchingByName() {
            itemDictionary = FaultDataRepository.shared.getFilteredGameItemsFactionDictionary()
        }
        else {
            itemDictionary = FaultDataRepository.shared.getGameItemsFactionDictionary()
        }
        
        if let itemGroup = ItemListViewSections(rawValue: indexPath.section)?.description {
            let itemDictionaryForSection = itemDictionary[itemGroup]
            if let gameItem = itemDictionaryForSection?[indexPath.row] {
                if let delegate = self.delegate {
                    delegate.didSelectItem(gameItem: gameItem)
                    self.navigationController?.popViewController(animated: true)
                }
                else {
                    let itemViewController = ItemViewController(item: gameItem)
                    self.navigationController?.pushViewController(itemViewController, animated: true)
                }
            }
        }
        
    }
    
    //Place this in row action where height changes
    //Update after resize row with heightForRowAt
    //        tableView.beginUpdates()
    //        tableView.endUpdates()
    
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        if indexPath == self.baseTableView.indexPathsForSelectedRows?.first {
//            let cell = self.baseTableView.cellForRow(at: indexPath)
//            cell?.detailTextLabel?.text = cell?.detailTextLabel?.text
//            //TODO: changes for increased cell size
//            return 140
//        }
//        return 70
//    }
    
    func filterItems() {
        let itemFilters = self.getActiveFilters()
        let searchString = self.searchBar.text
        FaultDataRepository.shared.FilterGameItemsFactionDictionary(filters: itemFilters, searchString: searchString)
    }
    
    func isSearchingByName() -> Bool {
        var isSearchingByName = false
        if let searchString = searchBar.text {
            isSearchingByName = searchString.trimmingCharacters(in: .whitespacesAndNewlines).count > 0
        }
        return isSearchingByName
    }
    
}


extension ItemListViewController: ItemFilterTableViewCellDelegate {
    func didSelectFilter(selectedFilter: ItemAttribute) {
        if let filterState = self.filters[selectedFilter] {
            self.filters[selectedFilter] = !filterState
        }
//        if itemFilters.contains(selectedFilter) {
//            itemFilters.removeAll(where: {$0 == selectedFilter})
//        }
//        else {
//            itemFilters.append(selectedFilter)
//        }
        
        self.filterItems()
        let sectionsToReload = IndexSet([
            ItemListViewSections.consumableItems.rawValue,
            ItemListViewSections.blueItems.rawValue,
            ItemListViewSections.redItems.rawValue,
            ItemListViewSections.purpleItems.rawValue,
            ItemListViewSections.greenItems.rawValue,
            ItemListViewSections.whiteItems.rawValue,
            ItemListViewSections.neutralItems.rawValue,
            ItemListViewSections.baseItems.rawValue
        ])
        self.tableView.reloadSections(sectionsToReload, with: .fade)
    }
    
        func getActiveFilters() -> [String] {
            let activeFilters = self.filters.filter { $0.value == true }
            var filtersToReturn = [String]()
            for filter in activeFilters.keys {
                filtersToReturn.append(filter.description().lowercased())
            }
            return filtersToReturn
        }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        //TODO: Add cancel button on search active and hide keyboard when clicked
        filterItems()
        let sectionsToReload = IndexSet([
            ItemListViewSections.consumableItems.rawValue,
            ItemListViewSections.blueItems.rawValue,
            ItemListViewSections.redItems.rawValue,
            ItemListViewSections.purpleItems.rawValue,
            ItemListViewSections.greenItems.rawValue,
            ItemListViewSections.whiteItems.rawValue,
            ItemListViewSections.neutralItems.rawValue,
            ItemListViewSections.baseItems.rawValue
        ])
        self.tableView.reloadSections(sectionsToReload, with: .fade)
    }
}
