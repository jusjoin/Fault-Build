//
//  StackViewFactory.swift
//  Fault Build
//
//  Created by Zane on 8/24/20.
//  Copyright © 2020 JusDev Studios. All rights reserved.
//

import Foundation
import UIKit

extension UIStackView {
    
//    static func createCheckBoxStackView(title: String) -> UIStackView {
    convenience init (title: String, button: UIButton) {
        let label = UILabel()
        let button = button
        
        label.text = title
        label.numberOfLines = 0
        label.textAlignment = .center
//        button.setTitle("O", for: .normal)
//        button.setTitle("X", for: .selected)
        
        self.init(arrangedSubviews: [label, button])
        self.distribution = .fillProportionally
        self.alignment = .center
        self.axis = .vertical
        self.addArrangedSubview(label)
        self.addArrangedSubview(button)
    }
}
