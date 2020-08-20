//
//  FaultBuildHelper.swift
//  Fault Build
//
//  Created by Zane on 8/7/20.
//  Copyright © 2020 JusDev Studios. All rights reserved.
//

import Foundation
import UIKit

final class FaultBuildHelper {
    static let shared: FaultBuildHelper = {
        let instance = FaultBuildHelper()
        return instance
    }()
    
    func getFactionImage(faction: String) -> UIImage {
        var name = ""
        switch(faction) {
        case FaultFaction.none:
            name = "FaultLogo"
        case FaultFaction.red:
            name = "RedFactionLogo"
        case FaultFaction.blue:
            name = "BlueFactionLogo"
        case FaultFaction.purple:
            name = "PurpleFactionLogo"
        case FaultFaction.green:
            name = "GreenFactionLogo"
        case FaultFaction.white:
            name = "WhiteFactionLogo"
        default:
            break
        }
        
        return UIImage(named: name) ?? UIImage()
    }
    
    func getData(from url: URL, completion: @escaping (Data?, URLResponse?, Error?) -> ()) {
        URLSession.shared.dataTask(with: url, completionHandler: completion).resume()
    }
    
//    func getNonFactionImage(type: String) -> UIImage{
//        var name = ""
//        switch(type) {
//        case FaultItemColor.neutral.rawValue:
//            name = "FaultLogo"
//            break
//        case FaultItemColor.consumable.rawValue:
//            name = "FaultLogo"
//            break
//
//        default:
//            break
//        }
//
//        return UIImage(named: name) ?? UIImage()
//    }

}
