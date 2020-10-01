//
//  GameItem.swift
//  Fault Build
//
//  Created by Zane on 8/6/20.
//  Copyright © 2020 JusDev Studios. All rights reserved.
//

import Foundation
import UIKit

class GameItemAttribute {
    let attributeName: String
    let value, rankValue: Double
    let uiDetails: String
    
    init(name:String, value: Double, rankValue: Double, uiDetails:String) {
        self.attributeName = name
        self.value = value
        self.rankValue = rankValue
        self.uiDetails = uiDetails
    }
    
    init(gameItemAttributeData: GameItemAttributeData) {
        self.attributeName = gameItemAttributeData.attributeName
        self.value = gameItemAttributeData.value
        self.rankValue = gameItemAttributeData.rankValue
        self.uiDetails = gameItemAttributeData.uiDetails
    }
}

class GameItem {
    
    let itemID: String
    let name: String
    let parents: [Int]
    let children: [Int]
    let treeID: Int
    let attributes: [GameItemAttribute]
    let passive: String
    let active: String
    let cost: Int
    let color: String
    var attributeNames: [String]
    var itemImage: UIImage?
    
    init(itemID: String, name: String, parents: [Int], children: [Int], treeID: Int, attributes: [GameItemAttribute], passive: String, active: String, cost: Int, color: String) {
        self.itemID = itemID
        self.name = name
        self.parents = parents
        self.children = children
        self.treeID = treeID
        self.attributes = attributes
        self.passive = passive
        self.active = active
        self.cost = cost
        self.color = color
        
        self.attributeNames = [String]()
        for attribute in self.attributes {
            self.attributeNames.append(attribute.attributeName.lowercased())
        }
    }
    
    init(itemID: String, gameItemData: GameItemData) {
        self.itemID = itemID
        self.name = gameItemData.name
        self.parents = gameItemData.parents
        self.children = gameItemData.children
        self.treeID = gameItemData.treeID
        self.passive = gameItemData.passive
        self.active = gameItemData.active
        self.cost = gameItemData.cost
        self.color = gameItemData.color.rawValue
        var attributes = [GameItemAttribute]()
        for gameItemAttribute in gameItemData.attributes {
            attributes.append(GameItemAttribute(gameItemAttributeData: gameItemAttribute))
        }
        self.attributes = attributes
        self.attributeNames = [String]()
        for attribute in self.attributes {
            self.attributeNames.append(attribute.attributeName.lowercased())
        }
    }
    
    func getItemImageURL() -> String {
        return "https://api.playfault.com/imagecdn/items/\(self.itemID).jpg"
    }
    
    func getDefaultItemImage() -> UIImage {
        var image = UIImage()
        switch(self.color) {
                case FaultFaction.none:
                    if self.treeID == 10 {
                        image = FaultBuildHelper.shared.getFactionImage(faction: FaultFaction.none)
                    }
                    else {
                        image = FaultBuildHelper.shared.getFactionImage(faction: FaultFaction.none)
                    }
        default:
            image = FaultBuildHelper.shared.getFactionImage(faction: self.color)
        }
        return image
    }
    
    func getChildren(gameItemID: String) -> [GameItem]{
        var childrenArray = [GameItem]()
        if let gameItem = FaultDataRepository.shared.getGameItems()[gameItemID]{
            if gameItem.children.count != 0 {
                let childID = String(gameItem.children[0])
                if let child = FaultDataRepository.shared.getGameItems()[childID] {
                    childrenArray.append(child)
                    if child.children.count != 0 {
                        childrenArray.append(contentsOf: child.getChildren(gameItemID: String(childID)))
                    }
                }
            }
        }
        return childrenArray
    }
    
//    func getItemImage(item: GameItem) -> UIImage {
//        var image = UIImage()
//
//        switch(item.color) {
//        case FaultFaction.none:
//            if item.treeID == 10 {
//                image = FaultBuildHelper.shared.getFactionImage(faction: FaultFaction.none)
//            }
//            else {
//                image = FaultBuildHelper.shared.getFactionImage(faction: FaultFaction.none)
//            }
//
//        case FaultFaction.blue:
//            image = FaultBuildHelper.shared.getFactionImage(faction: FaultFaction.blue)
//
//        case FaultFaction.green:
//            image = FaultBuildHelper.shared.getFactionImage(faction: FaultFaction.green)
//
//        case FaultFaction.purple:
//            image = FaultBuildHelper.shared.getFactionImage(faction: FaultFaction.purple)
//
//        case FaultFaction.red:
//            image = FaultBuildHelper.shared.getFactionImage(faction: FaultFaction.red)
//
//        case FaultFaction.white:
//            image = FaultBuildHelper.shared.getFactionImage(faction: FaultFaction.white)
//
//        default :
//            break
//        }
//        return image
//    }
    
    func getItemImageBackgroundColor() -> UIColor {
        var color = UIColor.clear
        
        switch(self.color) {
        case FaultFaction.none:
            if self.parents.count == 0 {
                if self.treeID == 10 {
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

enum GameItemType: Int, CaseIterable {
    case consumableItems = 0
    case blueItems
    case redItems
    case purpleItems
    case greenItems
    case whiteItems
    case neutralItems
    case baseItems
    
    var description : String {
        switch self {
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

extension GameItem: Hashable, Equatable {
//    var hashValue: Int {
//        return self.itemID.hashValue ^
//        self.name.hashValue ^
//            self.color.hashValue
//    }
//
    func hash(into hasher: inout Hasher) {
        hasher.combine(self.itemID.hashValue)
        hasher.combine(self.name.hashValue)
        hasher.combine(self.color.hashValue)
    }
    
    static func == (lhs: GameItem, rhs: GameItem) -> Bool {
        return lhs.itemID == rhs.itemID && lhs.name == rhs.name
    }
}
