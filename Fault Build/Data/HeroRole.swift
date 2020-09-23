//
//  HeroRole.swift
//  Fault Build
//
//  Created by Zane on 9/21/20.
//  Copyright © 2020 JusDev Studios. All rights reserved.
//

import Foundation

enum HeroRole: Int, CaseIterable {
    case offlane
    case midlane
    case carry
    case support
    case jungler
    
    var name: String {
        var name = ""
        switch self {
        case .offlane:
            name = "Offlane"
        case .midlane:
            name = "Midlane"
        case .carry:
            name = "Carry"
        case .support:
            name = "Support"
        case .jungler:
            name = "Jungler"
        }
        return name
    }
    
    var imageName: String {
        var name = ""
        switch self {
        case .offlane:
            name = "OfflaneIcon"
        case .midlane:
            name = "MidlaneIcon"
        case .carry:
            name = "CarryIcon"
        case .support:
            name = "SupportIcon"
        case .jungler:
            name = "JunglerIcon"
        }
        return name
    }
}
