//
//  CellFactory.swift
//  Fault Build
//
//  Created by Zane on 8/15/20.
//  Copyright © 2020 JusDev Studios. All rights reserved.
//

import Foundation
import UIKit

class CellFactory{
    enum ReuseIdentifiers {
        static let basicItemCell = "BasicItemCell"
    }
    
    static func createBasicItemCell(gameItem: GameItem) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: ReuseIdentifiers.basicItemCell)
        cell.imageView?.image = gameItem.getItemImage()
        cell.imageView?.backgroundColor = gameItem.getItemImageBackgroundColor()
        cell.textLabel?.text = gameItem.name
        var itemInfo = ""
        for attribute in gameItem.attributes {
            itemInfo.append(attribute.uiDetails)
            if attribute.uiDetails != gameItem.attributes.last?.uiDetails {
                itemInfo.append("\n")
            }
        }
        
        cell.detailTextLabel?.numberOfLines = 0
        cell.detailTextLabel?.text = itemInfo
        cell.layer.borderColor = UIColor.black.cgColor
        cell.layer.borderWidth = 1
        cell.layer.cornerRadius = 8
        
        return cell
    }
    
    static func createItemDetailsCell(gameItem: GameItem) -> UITableViewCell {
        let cell = UITableViewCell(style: .value1, reuseIdentifier: nil)
        var itemInfo = ""
        for attribute in gameItem.attributes {
            itemInfo.append(attribute.uiDetails)
            if attribute.uiDetails != gameItem.attributes.last?.uiDetails {
                itemInfo.append("\n")
            }
        }
        cell.textLabel?.text = itemInfo
        cell.textLabel?.numberOfLines = 0
        let costLabel = "Cost:\n" + String(gameItem.cost)
        cell.detailTextLabel?.text = costLabel
        cell.detailTextLabel?.numberOfLines = 0
        
        return cell
    }
}
