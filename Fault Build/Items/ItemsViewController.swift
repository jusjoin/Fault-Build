//
//  ItemsViewController.swift
//  Fault Build
//
//  Created by Zane on 8/2/20.
//  Copyright © 2020 JusDev Studios. All rights reserved.
//

import UIKit

class ItemsViewController: BaseViewController {
//    private var gameItems:GameItemDictionary?
    
    enum tableSections: Int {
        case consumableItems
        case blueItems
        case redItems
        case purpleItems
        case greenItems
        case whiteItems
        case neutralItems
        case baseItems
    }
    
    var selectedIndex = IndexPath(row: -1, section: -1)
    
    private let comingSoonLabel:UILabel = {
        let label = UILabel()
        label.text = "Coming Soon"
        label.textColor = .red
        label.font = UIFont.preferredFont(forTextStyle: .headline)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
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
    
    func setupComingSoon() {
        self.mainContentView.addSubview(comingSoonLabel)
        comingSoonLabel.topAnchor.constraint(equalTo: self.mainContentView.topAnchor, constant: 80).isActive = true
        comingSoonLabel.leadingAnchor.constraint(equalTo: self.mainContentView.leadingAnchor, constant: 20).isActive = true
        comingSoonLabel.trailingAnchor.constraint(equalTo: self.mainContentView.trailingAnchor, constant: -20).isActive = true
        self.mainContentView.centerYAnchor.constraint(equalTo: self.mainContentView.centerYAnchor).isActive = true
        self.mainContentView.centerXAnchor.constraint(equalTo: self.self.mainContentView.centerXAnchor).isActive = true
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        var itemGroup = ""
        switch (indexPath.section) {
        case tableSections.consumableItems.rawValue:
            itemGroup = "ConsumableItems"
        case tableSections.blueItems.rawValue:
            itemGroup = "BlueItems"
        case tableSections.redItems.rawValue:
            itemGroup = "RedItems"
        case tableSections.purpleItems.rawValue:
            itemGroup = "PurpleItems"
        case tableSections.greenItems.rawValue:
            itemGroup = "GreenItems"
        case tableSections.whiteItems.rawValue:
            itemGroup = "WhiteItems"
        case tableSections.neutralItems.rawValue:
            itemGroup = "NeutralItems"
        case tableSections.baseItems.rawValue:
            itemGroup = "BaseItems"
        default:
            break
        }
//        let gameItem = FaultDataRepository.shared.getSortedGameItems()[indexPath.row]
        if let groupArray = FaultDataRepository.shared.getGameItemsFactionDictionary()[itemGroup] {
            let gameItem = groupArray[indexPath.row]
            cell.imageView?.image = self.getItemImage(item: gameItem)
            cell.imageView?.backgroundColor = self.getItemImageBackgroundColor(item: gameItem)
            cell.textLabel?.text = gameItem.name
        }
        return cell
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 8
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        var title = ""
        switch (section) {
        case tableSections.consumableItems.rawValue:
            title = "Consumables"
        case tableSections.blueItems.rawValue:
            title = "Blue Items"
        case tableSections.redItems.rawValue:
            title = "Red Items"
        case tableSections.purpleItems.rawValue:
            title = "Purple Items"
        case tableSections.greenItems.rawValue:
            title = "Green Items"
        case tableSections.whiteItems.rawValue:
            title = "White Items"
        case tableSections.neutralItems.rawValue:
            title = "Neutral Items"
        case tableSections.baseItems.rawValue:
            title = "Base Items"
        default:
            break
        }
        
        return title
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return FaultDataRepository.shared.getSortedGameItems().count
        var itemGroup = ""
        switch (section) {
        case tableSections.consumableItems.rawValue:
            itemGroup = "ConsumableItems"
        case tableSections.blueItems.rawValue:
            itemGroup = "BlueItems"
        case tableSections.redItems.rawValue:
            itemGroup = "RedItems"
        case tableSections.purpleItems.rawValue:
            itemGroup = "PurpleItems"
        case tableSections.greenItems.rawValue:
            itemGroup = "GreenItems"
        case tableSections.whiteItems.rawValue:
            itemGroup = "WhiteItems"
        case tableSections.neutralItems.rawValue:
            itemGroup = "NeutralItems"
        case tableSections.baseItems.rawValue:
            itemGroup = "BaseItems"
        default:
            break
        }
        
        return FaultDataRepository.shared.getGameItemsFactionDictionary()[itemGroup]?.count ?? 0
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if selectedIndex == self.baseTableView.indexPathsForSelectedRows?.first {
            self.baseTableView.deselectRow(at: indexPath, animated: true)
        }
        self.selectedIndex = self.baseTableView.indexPathsForSelectedRows?.first ?? IndexPath(row: -1, section: -1)
        tableView.beginUpdates()
        tableView.endUpdates()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath == self.baseTableView.indexPathsForSelectedRows?.first {
            return 140
        }
        return 70
    }
    
    func getItemImage(item: GameItem) -> UIImage {
            var image = UIImage()
            
            switch(item.color) {
            case FaultFaction.none:
                if item.treeID == 10 {
                    image = FaultBuildHelper.shared.getFactionImage(faction: FaultFaction.none)
                }
                else {
                    image = FaultBuildHelper.shared.getFactionImage(faction: FaultFaction.none)
                }
                
            case FaultFaction.blue:
                image = FaultBuildHelper.shared.getFactionImage(faction: FaultFaction.blue)
                
            case FaultFaction.green:
                image = FaultBuildHelper.shared.getFactionImage(faction: FaultFaction.green)
                
            case FaultFaction.purple:
                image = FaultBuildHelper.shared.getFactionImage(faction: FaultFaction.purple)
                
            case FaultFaction.red:
                image = FaultBuildHelper.shared.getFactionImage(faction: FaultFaction.red)
                
            case FaultFaction.white:
                image = FaultBuildHelper.shared.getFactionImage(faction: FaultFaction.white)
                
            default :
                break
            }
            return image
        }
    
    func getItemImageBackgroundColor(item: GameItem) -> UIColor {
        var color = UIColor.clear
        
        switch(item.color) {
        case FaultFaction.none:
            if item.parents.count == 0 {
                if item.treeID == 10 {
                    color = UIColor(hex: ThemeManager.shared.currentTheme.consumableItemBG) ?? UIColor.clear
                }
                else {
                    color = UIColor(hex: ThemeManager.shared.currentTheme.neutralItemBG) ?? UIColor.clear
                }
            }
            else {
                color = UIColor(hex: ThemeManager.shared.currentTheme.consumableItemBG) ?? UIColor.clear
            }
            
        case FaultFaction.blue:
            color = UIColor(hex: ThemeManager.shared.currentTheme.blueFaction) ?? UIColor.clear
            
        case FaultFaction.green:
            color = UIColor(hex: ThemeManager.shared.currentTheme.greenFaction) ?? UIColor.clear
            
        case FaultFaction.purple:
            color = UIColor(hex: ThemeManager.shared.currentTheme.purpleFaction) ?? UIColor.clear
            
        case FaultFaction.red:
            color = UIColor(hex: ThemeManager.shared.currentTheme.redFaction) ?? UIColor.clear
            
        case FaultFaction.white:
            color = UIColor(hex: ThemeManager.shared.currentTheme.whiteFaction) ?? UIColor.clear
            
        default :
            break
        }
        return color
    }
}
