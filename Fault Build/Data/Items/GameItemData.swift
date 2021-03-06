//
//  GameItemData.swift
//  Fault Build
//
//  Created by Zane on 8/3/20.
//  Copyright © 2020 JusDev Studios. All rights reserved.
//

//   let items = try? JSONDecoder().decode(GameItemData.self, from: jsonData)

import Foundation

// MARK: - GameItemData
class GameItemData: Codable {
    var name: String
    var parents: [Int]
    var children: [Int]
    var treeID: Int
    var attributes: [GameItemAttributeData]
    var passive: String
    var active: String
    var cost: Int
    var color: GameItemColorData
    
    enum CodingKeys: String, CodingKey {
        case name, parents, children, attributes, passive, active, cost, color
        case treeID = "treeId"
    }
}

// MARK: - GameItemAttributeData
class GameItemAttributeData: Codable {
    var attributeName: String
    var value, rankValue: Double
    var uiDetails: String
    
    enum CodingKeys: String, CodingKey {
        case attributeName = "AttributeName"
        case value = "Value"
        case rankValue = "RankValue"
        case uiDetails = "UIDetails"
    }
}

// MARK: - GameItemColorData
enum GameItemColorData: String, Codable {
    case black = "Black"
    case blue = "Blue"
    case green = "Green"
    case none = "None"
    case red = "Red"
    case white = "White"
}

typealias GameItemDictionary = [String: GameItemData]
