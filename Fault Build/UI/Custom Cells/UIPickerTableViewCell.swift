//
//  UIPickerTableViewCell.swift
//  Fault Build
//
//  Created by Zane on 9/21/20.
//  Copyright © 2020 JusDev Studios. All rights reserved.
//

import UIKit

class UIPickerTableViewCell: FBTableViewCell {
    
    private var pickerView = UIPickerView()
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    init(delegate: UIPickerViewDelegate, datasource: UIPickerViewDataSource) {
        super.init(style: .default, reuseIdentifier: "pickerViewCell")
        self.pickerView.delegate = delegate
        self.pickerView.dataSource = datasource
        self.setupPickerViewConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupPickerViewConstraints() {
        let containerView = UIView()
        containerView.translatesAutoresizingMaskIntoConstraints = false
        self.pickerView.translatesAutoresizingMaskIntoConstraints = false
        containerView.addSubview(self.pickerView)
        let pickerViewConstraints = [
            self.pickerView.topAnchor.constraint(equalTo: containerView.topAnchor),
            self.pickerView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor),
            self.pickerView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            self.pickerView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor)
        ]
        NSLayoutConstraint.activate(pickerViewConstraints)
        
        self.contentView.addSubview(containerView)
        let containerViewConstraints = [
            containerView.topAnchor.constraint(equalTo: self.contentView.topAnchor),
            containerView.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor),
            containerView.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor),
            containerView.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor)
        ]
        NSLayoutConstraint.activate(containerViewConstraints)
    }
}
