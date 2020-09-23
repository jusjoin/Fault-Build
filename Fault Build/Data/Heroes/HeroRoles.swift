//
//  HeroRoles.swift
//  Fault Build
//
//  Created by Zane on 9/23/20.
//  Copyright © 2020 JusDev Studios. All rights reserved.
//

import Foundation

enum HeroRoles: Int, CaseIterable {
    case carry
    case support
    case offlane
    case midlane
    case jungler
    
    var name: String {
        var name = ""
        switch self {
        case .carry: name = "Carry"
        case .support: name = "Support"
        case .offlane: name = "Offlane"
        case .midlane: name = "Midlane"
        case .jungler: name = "Jungler"
        }
        return name
    }
}
