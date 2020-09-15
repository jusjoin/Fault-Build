//
//  ItemAffinity.swift
//  Fault Build
//
//  Created by Zane on 9/14/20.
//  Copyright © 2020 JusDev Studios. All rights reserved.
//

import Foundation
import UIKit

enum ItemAffinity: Int, CaseIterable {
    case none
    case red
    case blue
    case purple
    case green
    case white
    
    var name: String {
        var text = ""
        switch self {
        case .none:
            text = "None"
        case .red:
            text = "Red"
        case .blue:
            text = "Blue"
        case .purple:
            text = "Purple"
        case .green:
            text = "Green"
        case .white:
            text = "White"
        }
        return text
    }
    
    var image: UIImage {
        var image = UIImage()
        switch self {
        case .none:
            image = UIImage(named: "FaultLogo") ?? image
        case .red:
            image = UIImage(named: "RedFactionLogo") ?? image
        case .blue:
            image = UIImage(named: "BlueFactionLogo") ?? image
        case .purple:
            image = UIImage(named: "PurpleFactionLogo") ?? image
        case .green:
            image = UIImage(named: "GreenFactionLogo") ?? image
        case .white:
            image = UIImage(named: "WhiteFactionLogo") ?? image
        }
        return image
    }
    
    func color() -> UIColor {
        var affinityColor: UIColor?
        switch self {
        case .none:
            affinityColor = UIColor(hex: ThemeManager.shared.currentTheme.baseItemBG)
        case .red:
            affinityColor = UIColor(hex: ThemeManager.shared.currentTheme.redFaction)
        case .blue:
            affinityColor = UIColor(hex: ThemeManager.shared.currentTheme.blueFaction)
        case .purple:
            affinityColor = UIColor(hex: ThemeManager.shared.currentTheme.purpleFaction)
        case .green:
            affinityColor = UIColor(hex: ThemeManager.shared.currentTheme.greenFaction)
        case .white:
            affinityColor = UIColor(hex: ThemeManager.shared.currentTheme.whiteFaction)
        }
        return affinityColor ?? UIColor.clear
    }
    
    static func fromColor(name: String) -> ItemAffinity {
        var affinity = ItemAffinity.none
        switch name {
        case ItemAffinity.red.name:
            affinity = ItemAffinity.red
            
        case ItemAffinity.blue.name:
            affinity = ItemAffinity.blue
            
        case ItemAffinity.purple.name:
            affinity = ItemAffinity.purple
            
        case "Black", "black":
            affinity = ItemAffinity.purple
            
        case ItemAffinity.green.name:
            affinity = ItemAffinity.green
            
        case ItemAffinity.white.name:
            affinity = ItemAffinity.white
            
        default:
            affinity = ItemAffinity.none
        }
        return affinity
    }
}
