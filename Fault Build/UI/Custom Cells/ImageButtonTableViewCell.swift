//
//  ImageButtonTableViewCell.swift
//  Fault Build
//
//  Created by Zane on 8/17/20.
//  Copyright © 2020 JusDev Studios. All rights reserved.
//

import UIKit

class ImageButtonTableViewCell: FBTableViewCell {

    let stackView = UIStackView()
    var button1: UIButton
    var button2: UIButton?
    var button3: UIButton?
    
    init(buttons: [UIButton], tableView: UITableView, reuseIdentifier: String?) {
        self.button1 = buttons[0]
        if buttons.indices.contains(1){
            self.button2 = buttons[1]
        }
        if buttons.indices.contains(2){
            self.button3 = buttons[2]
        }
        super.init(style: .default, reuseIdentifier: reuseIdentifier)
//        if let reuseIdentifier = reuseIdentifier {
//            tableView.register(UITableViewCell.self, forCellReuseIdentifier: reuseIdentifier)
//        }
        self.setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews(){
        self.stackView.translatesAutoresizingMaskIntoConstraints = false
        self.button1.translatesAutoresizingMaskIntoConstraints = false
        
        self.stackView.axis = .horizontal
        self.stackView.distribution = .fillEqually
        self.stackView.alignment = .center
        
        self.button1.layer.cornerRadius = self.button1.frame.size.width / 2;
        self.button1.clipsToBounds = true;
        
        self.contentView.addSubview(stackView)
        let stackViewConstraints = [
            stackView.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor),
            stackView.topAnchor.constraint(equalTo: self.contentView.topAnchor),
            stackView.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor)
        ]
        NSLayoutConstraint.activate(stackViewConstraints)
        
        self.stackView.addArrangedSubview(self.button1)
        let button1Constraints = [
            button1.heightAnchor.constraint(equalToConstant: 100),
            button1.widthAnchor.constraint(equalToConstant: 100)
            //TODO: Fix these constraints, they are weird and break
        ]
        NSLayoutConstraint.activate(button1Constraints)
        
        if let button2 = self.button2 {
            self.stackView.addArrangedSubview(button2)
            button2.translatesAutoresizingMaskIntoConstraints = false
            button2.layer.cornerRadius = button2.frame.size.width / 2;
            button2.clipsToBounds = true;
            let button2Constraints = [
                button2.heightAnchor.constraint(equalToConstant: 100),
                button2.widthAnchor.constraint(equalToConstant: 100)
            ]
            NSLayoutConstraint.activate(button2Constraints)
        }
        
        if let button3 = self.button3 {
            self.stackView.addArrangedSubview(button3)
            button3.translatesAutoresizingMaskIntoConstraints = false
            button3.layer.cornerRadius = button3.frame.size.width / 2;
            button3.clipsToBounds = true;
            let button3Constraints = [
                button3.heightAnchor.constraint(equalToConstant: 100),
                button3.widthAnchor.constraint(equalToConstant: 100)
            ]
            NSLayoutConstraint.activate(button3Constraints)
        }
    }
    
}
