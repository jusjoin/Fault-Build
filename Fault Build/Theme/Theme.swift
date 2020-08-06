//
//  Theme.swift
//  Fault Build
//
//  Created by Zane on 8/3/20.
//  Copyright © 2020 JusDev Studios. All rights reserved.
//

import Foundation
import UIKit

class ThemeManager {
    
    static let shared = ThemeManager()
    var currentTheme: Theme
    let lightTheme = LightTheme()
    let darkTheme = DarkTheme()
    
    init() {
        //TODO: Set based on user current theme
        currentTheme = lightTheme
    }
}

class Theme {
    //colors
    var mainBackgroundColor: UIColor = UIColor()
    var tableViewBackgroundColor: UIColor = UIColor()
    var primaryButtonBackgroundColor: UIColor = UIColor()
    
    //fonts
    
}

class LightTheme: Theme {
    override init() {
        super.init()
        mainBackgroundColor = .gray
        tableViewBackgroundColor = .gray
        primaryButtonBackgroundColor = .blue
    }
}

class DarkTheme: Theme {
    override init() {
        super.init()
        mainBackgroundColor = .gray
        tableViewBackgroundColor = .gray
        primaryButtonBackgroundColor = .blue
    }
}
