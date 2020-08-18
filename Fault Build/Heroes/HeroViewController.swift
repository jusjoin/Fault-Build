//
//  HeroViewController.swift
//  Fault Build
//
//  Created by Zane on 8/18/20.
//  Copyright © 2020 JusDev Studios. All rights reserved.
//

import UIKit

class HeroViewController: BaseViewController {

    var hero: Hero
    
    init(withHero hero: Hero) {
        self.hero = hero
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableHeader()

    }
    
    func setupTableHeader() {
            let containerView = UITableViewHeaderFooterView()
            containerView.translatesAutoresizingMaskIntoConstraints = false;
        let imageView = UIImageView(image: UIImage(named: self.hero.getHeroBannerName()))
            imageView.translatesAutoresizingMaskIntoConstraints = false
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false;
            label.text = hero.name
            label.textColor = .black
            label.textAlignment = .center
            label.sizeToFit()
            
            let headerView = UIView()
            headerView.translatesAutoresizingMaskIntoConstraints = false;
            headerView.addSubview(imageView)
            headerView.addSubview(label)
            containerView.addSubview(headerView)
            self.baseTableView.tableHeaderView = containerView
            
            let containerViewConstraints = [
                containerView.topAnchor.constraint(equalTo: self.baseTableView.topAnchor),
                containerView.widthAnchor.constraint(equalTo: self.baseTableView.widthAnchor)
            ]
            NSLayoutConstraint.activate(containerViewConstraints)
            
            let headerViewConstraints = [
                        headerView.topAnchor.constraint(equalTo: containerView.topAnchor),
                        headerView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor),
                        headerView.widthAnchor.constraint(equalTo: containerView.widthAnchor)
                    ]
                    NSLayoutConstraint.activate(headerViewConstraints)
            
            let imageViewConstraints = [
                imageView.topAnchor.constraint(equalTo: headerView.topAnchor),
                imageView.centerXAnchor.constraint(equalTo: headerView.centerXAnchor),
                imageView.centerYAnchor.constraint(equalTo: headerView.centerYAnchor),
                imageView.heightAnchor.constraint(equalToConstant: 150),
                imageView.widthAnchor.constraint(equalTo: self.baseTableView.widthAnchor)
            ]
            NSLayoutConstraint.activate(imageViewConstraints)
            
            let labelConstraints = [
                label.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 8),
                label.centerXAnchor.constraint(equalTo: headerView.centerXAnchor),
                label.bottomAnchor.constraint(equalTo: headerView.bottomAnchor)
            ]
            NSLayoutConstraint.activate(labelConstraints)
        }
    

}
