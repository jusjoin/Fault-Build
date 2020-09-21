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
    var button1: UIButton?
    var button2: UIButton?
    var button3: UIButton?
    var button1Label = UILabel()
    var button2Label = UILabel()
    var button3Label = UILabel()
    
    init(buttons: [UIButton], buttonTitles: [String], tableView: UITableView, reuseIdentifier: String?) {
        button1Label.text = " "
        button2Label.text = " "
        button3Label.text = " "
        if buttons.indices.contains(0){
            self.button1 = buttons[0]
            if buttonTitles.indices.contains(0){
                self.button1Label.text = buttonTitles[0]
            }
        }
        if buttons.indices.contains(1){
            self.button2 = buttons[1]
            if buttonTitles.indices.contains(1){
                self.button2Label.text = buttonTitles[1]
            }
        }
        if buttons.indices.contains(2){
            self.button3 = buttons[2]
            if buttonTitles.indices.contains(2){
                self.button3Label.text = buttonTitles[2]
            }
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
        button1Label.sizeToFit()
        button2Label.sizeToFit()
        button3Label.sizeToFit()
        let button1Container = UIStackView()
        button1Container.translatesAutoresizingMaskIntoConstraints = false
        button1Container.axis = .vertical
        button1Container.distribution = .equalSpacing
        button1Container.alignment = .center
        button1Container.spacing = 2.5
        
        let button2Container = UIStackView()
        button2Container.translatesAutoresizingMaskIntoConstraints = false
        button2Container.axis = .vertical
        button2Container.distribution = .equalSpacing
        button2Container.alignment = .center
        button2Container.spacing = 2.5
        
        let button3Container = UIStackView()
        button3Container.translatesAutoresizingMaskIntoConstraints = false
        button3Container.axis = .vertical
        button3Container.distribution = .equalSpacing
        button3Container.alignment = .center
        button3Container.spacing = 2.5
        
        self.stackView.axis = .horizontal
        self.stackView.distribution = .fillEqually
        self.stackView.alignment = .center
        self.contentView.addSubview(stackView)
        let stackViewConstraints = [
            stackView.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor),
            stackView.topAnchor.constraint(equalTo: self.contentView.topAnchor),
            stackView.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor)
        ]
        NSLayoutConstraint.activate(stackViewConstraints)
        
        self.stackView.translatesAutoresizingMaskIntoConstraints = false
        if let button1 = self.button1 {
            button1Container.addArrangedSubview(button1)
            button1Container.addArrangedSubview(self.button1Label)
            self.stackView.addArrangedSubview(button1Container)
            button1.translatesAutoresizingMaskIntoConstraints = false
            button1.layer.cornerRadius = button1.frame.size.width / 2;
            button1.clipsToBounds = true;
            let button1Constraints = [
                button1.heightAnchor.constraint(equalToConstant: 100),
                button1.widthAnchor.constraint(equalToConstant: 100)
                //TODO: Fix these constraints, they are weird and break
            ]
            NSLayoutConstraint.activate(button1Constraints)
        }
        
        if let button2 = self.button2 {
            button2Container.addArrangedSubview(button2)
            button2Container.addArrangedSubview(self.button2Label)
            self.stackView.addArrangedSubview(button2Container)
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
            button3Container.addArrangedSubview(button3)
            button3Container.addArrangedSubview(self.button3Label)
            self.stackView.addArrangedSubview(button3Container)
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
