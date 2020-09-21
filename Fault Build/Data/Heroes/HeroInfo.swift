//
//  HeroInfo.swift
//  Fault Build
//
//  Created by Zane on 9/16/20.
//  Copyright © 2020 JusDev Studios. All rights reserved.
//

import Foundation

class HeroInfo: Codable {
    let basicRange, niche, role, damageType: String
    let infoDescription: String

    enum CodingKeys: String, CodingKey {
        case basicRange, niche, role, damageType
        case infoDescription = "description"
    }
}
