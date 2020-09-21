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
    
    static let shared: ThemeManager = {
        let instance = ThemeManager()
        return instance
    }()
    var currentTheme: Theme
    let lightTheme = LightTheme()
    let darkTheme = DarkTheme()
    
    init() {
        //TODO: Set based on user current theme
        currentTheme = UIScreen.main.traitCollection.userInterfaceStyle == .light ? lightTheme : darkTheme
    }
}

class Theme {
    //colors
    var mainBackgroundColor: UIColor = UIColor.clear
    var tableViewBackgroundColor: UIColor = UIColor.clear
    var primaryButtonBackgroundColor: UIColor = UIColor.clear
    
    let blueFaction = "#183B72FF"
    let redFaction = "#4B211CFF"
    let purpleFaction = "#3F3153FF"
    let greenFaction = "#336F36FF"
    let whiteFaction = "#777777FF"
    let neutralItemBG = "#A85511FF"
    let consumableItemBG = "#222222FF"
    let baseItemBG = "#222222FF"
    
    //fonts
    
}

class LightTheme: Theme {
    override init() {
        super.init()
        mainBackgroundColor = .white
        tableViewBackgroundColor = .white
        primaryButtonBackgroundColor = .blue
    }
}

class DarkTheme: Theme {
    override init() {
        super.init()
        mainBackgroundColor = .black
        tableViewBackgroundColor = .black
        primaryButtonBackgroundColor = .blue
    }
}
