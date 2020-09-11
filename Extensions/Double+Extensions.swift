//
//  Double+Extensions.swift
//  Fault Build
//
//  Created by Zane on 9/10/20.
//  Copyright © 2020 JusDev Studios. All rights reserved.
//

import Foundation

extension Double {
    func stringDP(_ numberOfDecimalPlaces: Int) -> String {
        return String(format: "%.\(numberOfDecimalPlaces)f", self)
    }
}
