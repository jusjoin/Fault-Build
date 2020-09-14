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
    
//    var filters: [ItemAttribute: Bool] = [
//        .ouchPower: false,
//        .ouchieArmor: false,
//        .ouchiePenetration: false,
//        .zapPower: false,
//        .sizzleArmor: false,
//        .sizzlePenetration: false,
//        .health: false,
//        .healthRegenRate: false,
//        .mana: false,
//        .manaRegenRate: false,
//        .pctCDR: false,
//        .attackSpeed: false,
//        .movementSpeed: false,
//        .critChance: false,
//        .lifesteal: false
//    ]
    var sectionsToDisplay = [ItemListViewSections]()
    var delegate: ItemListViewDelegate?
    var itemFilterDelegate: ItemFilterDelegate?
    var itemFilters = [ItemAttribute: String]()
    
    init() {
        super.init(nibName: nil, bundle: nil)
        if(FaultDataRepository.shared.getGameItems().count == 0)
        {
            FaultDataRepository.shared.updateGameItems(completion: { [weak self] in
                if let self = self {
                    DispatchQueue.main.async {
                        self.sectionsToDisplay = self.getSectionsToDisplay()
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
    
    override func viewWillAppear(_ animated: Bool) {
        self.sectionsToDisplay = self.getSectionsToDisplay()
        self.reloadTableView()
    }
    
    func getSectionsToDisplay() -> [ItemListViewSections] {
        var sections = [ItemListViewSections]()
        let itemDictionary = self.getItemDictionaryToUse()
        sections.append(.filters)
        for section in ItemListViewSections.allCases {
            if let sectionCount = itemDictionary[section.description]?.count {
                if sectionCount > 0 {
                    sections.append(section)
                }
            }
        }
        return sections
    }
    
    func getItemDictionaryToUse() -> [String: [GameItem]] {
        var itemDictionary = [String: [GameItem]]()
        if self.getFilters().count > 0 || self.isSearchingByName() {
            itemDictionary = FaultDataRepository.shared.getFilteredGameItemsFactionDictionary()
        }
        else {
            itemDictionary = FaultDataRepository.shared.getGameItemsFactionDictionary()
        }
        return itemDictionary
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = UITableViewCell(style: .subtitle, reuseIdentifier: nil)
        let section = self.sectionsToDisplay.count == ItemListViewSections.allCases.count ? ItemListViewSections(rawValue: indexPath.section) : self.sectionsToDisplay[indexPath.section]
        switch section {
        case .filters:
            cell = FBTableViewCell(style: .default, reuseIdentifier: "ItemFilterCell")
            cell.textLabel?.numberOfLines = 0
            cell.textLabel?.text = self.itemFilters.count == 0 ? "Select filters..." : ""
            for attribute in self.itemFilters {
                if let existingText = cell.textLabel?.text {
                    if existingText.count > 0 {
                        cell.textLabel?.text = existingText + ", \(attribute.key.displayName())"
                    }
                    else {
                        cell.textLabel?.text = attribute.key.displayName()
                    }
                }
            }
        default:
            let itemDictionary = self.getItemDictionaryToUse()
            if let itemGroup = section?.description,
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
//        return ItemListViewSections.allCases.count
        return self.sectionsToDisplay.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        var title = ""
        title = self.sectionsToDisplay[section].description
        return title
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        var rows = 0
        if section == ItemListViewSections.filters.rawValue  {
            rows = 1
        }
        else {
            let itemDictionary = getItemDictionaryToUse()
            let gameItemSection = self.sectionsToDisplay.count == ItemListViewSections.allCases.count ? ItemListViewSections(rawValue: section) : self.sectionsToDisplay[section]
            if let sectionName = gameItemSection?.description,
                let count = itemDictionary[sectionName]?.count {
                rows = count > 0 ? count : 0
            }
        }
        return rows
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.tableView.deselectRow(at: indexPath, animated: true)
        let section = self.sectionsToDisplay.count == ItemListViewSections.allCases.count ? ItemListViewSections(rawValue: indexPath.section) : self.sectionsToDisplay[indexPath.section]
        if section == .filters {
            let selectFilterViewController = SelectItemFilterViewController(delegate: self, filters: self.itemFilters)
            self.navigationController?.pushViewController(selectFilterViewController, animated: true)
        }
        let itemDictionary = self.getItemDictionaryToUse()
        //TODO: Fix this section with changes from cellForRowAt
        if let itemGroup = section?.description,
            let itemDictionaryForSection = itemDictionary[itemGroup] {
            if itemDictionaryForSection.count > 0 {
                let gameItem = itemDictionaryForSection[indexPath.row]
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
        let filters = self.getFilters()
        let searchString = self.searchBar.text
        FaultDataRepository.shared.FilterGameItemsFactionDictionary(filters: filters, searchString: searchString)
        self.sectionsToDisplay = self.getSectionsToDisplay()
        self.reloadTableView()
    }
    
    func getFilters() -> [String] {
        var filters = [String]()
        for filter in self.itemFilters {
            filters.append(filter.value)
        }
        return filters
    }
    
    func isSearchingByName() -> Bool {
        var isSearchingByName = false
        if let searchString = searchBar.text {
            isSearchingByName = searchString.trimmingCharacters(in: .whitespacesAndNewlines).count > 0
        }
        return isSearchingByName
    }
    
    func reloadItemSections() {
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
    
    func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
        searchBar.setShowsCancelButton(true, animated: true)
    }
    
    func searchBarTextDidEndEditing(_ searchBar: UISearchBar) {
        searchBar.setShowsCancelButton(false, animated: true)
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        searchBar.endEditing(true)
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        self.filterItems()
    }
}

extension ItemListViewController: ItemFilterDelegate {
    func didSelectFilter(selectedFilters: [ItemAttribute: String]) {
        self.itemFilters = selectedFilters
        self.filterItems()
    }
    
}

//extension ItemListViewController: ItemFilterTableViewCellDelegate {
//    func didSelectFilter(selectedFilter: ItemAttribute) {
//        if let filterState = self.filters[selectedFilter] {
//            self.filters[selectedFilter] = !filterState
//        }
////        if itemFilters.contains(selectedFilter) {
////            itemFilters.removeAll(where: {$0 == selectedFilter})
////        }
////        else {
////            itemFilters.append(selectedFilter)
////        }
//
//        self.filterItems()
//        self.reloadSections()
//    }
//
////    func getActiveFilters() -> [String] {
////        let activeFilters = self.filters.filter { $0.value == true }
////        var filtersToReturn = [String]()
////        for filter in activeFilters.keys {
////            filtersToReturn.append(filter.description().lowercased())
////        }
////        return filtersToReturn
////    }
//}
