//
//  GameItem.swift
//  Fault Build
//
//  Created by Zane on 8/6/20.
//  Copyright © 2020 JusDev Studios. All rights reserved.
//

import Foundation

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
    }
}
