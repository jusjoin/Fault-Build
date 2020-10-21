//
//  Build.swift
//  Fault Build
//
//  Created by Zane on 10/10/20.
//  Copyright © 2020 JusDev Studios. All rights reserved.
//

import Foundation

class ItemBuild {
    
    enum keys: String {
        case buildID = "buildID"
        case characterID = "characterID"
        case items = "items"
        case affinity1 = "affinity1"
        case affinity1Level = "affinity1Level"
        case affinity2 = "affinity2"
        case affinity2Level = "affinity2Level"
    }
    
    var buildID: String = ""
    var characterID: String = ""
    var items: [String] = [String]()
    var affinity1: Int = 0
    var affinity1Level: Int = 0
    var affinity2: Int = 0
    var affinity2Level: Int = 0
    
    init(buildID: String = "", characterID: String = "", items: [String] = [String](), affinity1: Int = 0, affinity1Level: Int = 0, affinity2: Int = 0, affinity2Level: Int = 0) {
        self.buildID = buildID
        self.characterID = characterID
        self.items = items
        self.affinity1 = affinity1
        self.affinity1Level = affinity1Level
        self.affinity2 = affinity2
        self.affinity2Level = affinity2Level
    }
}
