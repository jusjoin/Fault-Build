//
//  UIPickerTableViewCell.swift
//  Fault Build
//
//  Created by Zane on 9/21/20.
//  Copyright © 2020 JusDev Studios. All rights reserved.
//

import UIKit

class UIPickerTableViewCell: FBTableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
//    func getRolePickerView() -> UIView{
    //        let containerView = UIView()
    //        containerView.translatesAutoresizingMaskIntoConstraints = false
    //        let pickerView = UIPickerView()
    //        pickerView.delegate = self
    //        pickerView.dataSource = self
    //        pickerView.translatesAutoresizingMaskIntoConstraints = false
    //        containerView.addSubview(pickerView)
    //        let pickerViewConstraints = [
    //            pickerView.topAnchor.constraint(equalTo: containerView.topAnchor),
    //            pickerView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor),
    //            pickerView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
    //            pickerView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor)
    //        ]
    //        NSLayoutConstraint.activate(pickerViewConstraints)
    //        return containerView
    //    }

}
