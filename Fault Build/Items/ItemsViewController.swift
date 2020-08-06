//
//  ItemsViewController.swift
//  Fault Build
//
//  Created by Zane on 8/2/20.
//  Copyright © 2020 JusDev Studios. All rights reserved.
//

import UIKit

class ItemsViewController: BaseViewController {
//    private var gameItems:GameItemDictionary?
    
    private let comingSoonLabel:UILabel = {
        let label = UILabel()
        label.text = "Coming Soon"
        label.textColor = .red
        label.font = UIFont.preferredFont(forTextStyle: .headline)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    init() {
        super.init(nibName: nil, bundle: nil)
        if(FaultDataRepository.shared.getGameItems().count == 0)
        {
            FaultDataRepository.shared.updateGameItems(completion: { [weak self] in
                if let self = self {
                    DispatchQueue.main.async {
                        self.reloadTableView()
                    }
                }
            })
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.setupComingSoon()
    }
    
    func setupComingSoon() {
        self.mainContentView.addSubview(comingSoonLabel)
        comingSoonLabel.topAnchor.constraint(equalTo: self.mainContentView.topAnchor, constant: 80).isActive = true
        comingSoonLabel.leadingAnchor.constraint(equalTo: self.mainContentView.leadingAnchor, constant: 20).isActive = true
        comingSoonLabel.trailingAnchor.constraint(equalTo: self.mainContentView.trailingAnchor, constant: -20).isActive = true
        self.mainContentView.centerYAnchor.constraint(equalTo: self.mainContentView.centerYAnchor).isActive = true
        self.mainContentView.centerXAnchor.constraint(equalTo: self.self.mainContentView.centerXAnchor).isActive = true
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.imageView?.image = UIImage(named: "BlueFactionLogo")
        cell.imageView?.backgroundColor = UIColor(hex: Constants.FaultColors.BlueFaction)
        cell.textLabel?.text = FaultDataRepository.shared.getSortedGameItems()[indexPath.row].name//.value.name
        return cell
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return FaultDataRepository.shared.getSortedGameItems().count
    }
}
