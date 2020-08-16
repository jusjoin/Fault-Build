//
//  String+Extensions.swift
//  Fault Build
//
//  Created by Zane on 8/2/20.
//  Copyright © 2020 JusDev Studios. All rights reserved.
//

import Foundation

extension String {
    
    func localize(comment: String? = "") -> String {
        return NSLocalizedString(self, comment: comment!)
    }
}
