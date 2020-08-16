//
//  ItemsViewController.swift
//  Fault Build
//
//  Created by Zane on 8/2/20.
//  Copyright © 2020 JusDev Studios. All rights reserved.
//

import UIKit

class ItemListViewController: BaseViewController {
//    private var gameItems:GameItemDictionary?
    
//    var selectedIndex = IndexPath(row: -1, section: -1)
    
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
//        self.setupComingSoon()
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = UITableViewCell(style: .subtitle, reuseIdentifier: nil)
        let itemDictionary = FaultDataRepository.shared.getGameItemsFactionDictionary()
        if let itemGroup = GameItemType(rawValue: indexPath.section)?.description {
            let itemDictionaryForSection = itemDictionary[itemGroup]
            if let gameItem = itemDictionaryForSection?[indexPath.row] {
                cell = CellFactory.createBasicItemCell(gameItem: gameItem)
            }
        }
        return cell
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 8
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let gameItemType = GameItemType(rawValue: section)
        return gameItemType?.description
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        var rows = 0
        if let gameItemType = GameItemType(rawValue: section)?.description,
            let count = FaultDataRepository.shared.getGameItemsFactionDictionary()[gameItemType]?.count {
            rows = count
        }
        
        return rows
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        if selectedIndex == self.baseTableView.indexPathsForSelectedRows?.first {
            self.baseTableView.deselectRow(at: indexPath, animated: true)
//        }
//        self.selectedIndex = self.baseTableView.indexPathsForSelectedRows?.first ?? IndexPath(row: -1, section: -1)
        let itemDictionary = FaultDataRepository.shared.getGameItemsFactionDictionary()
        if let itemGroup = GameItemType(rawValue: indexPath.section)?.description {
            let itemDictionaryForSection = itemDictionary[itemGroup]
            if let gameItem = itemDictionaryForSection?[indexPath.row] {
                let itemViewController = ItemViewController(item: gameItem)
                self.navigationController?.pushViewController(itemViewController, animated: true)
            }
        }
        //Update after resize row with heightForRowAt
//        tableView.beginUpdates()
//        tableView.endUpdates()
    }
    
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        if indexPath == self.baseTableView.indexPathsForSelectedRows?.first {
//            let cell = self.baseTableView.cellForRow(at: indexPath)
//            cell?.detailTextLabel?.text = cell?.detailTextLabel?.text
//            //TODO: changes for increased cell size
//            return 140
//        }
//        return 70
//    }
    
}
