//
//  ItemViewController.swift
//  Fault Build
//
//  Created by Zane on 8/10/20.
//  Copyright © 2020 JusDev Studios. All rights reserved.
//

import UIKit

class ItemViewController: BaseViewController {

    enum ItemTableRow: Int {
        case statsAndGold = 0
//        case buildProcess
        case active
        case passive
    }
    
    enum ItemTableSection: Int {
        case itemDetails = 0
        case buildProcess
    }
    
    var item: GameItem
    var itemChildren: [GameItem]
    
    init(item: GameItem) {
        self.item = item
        self.itemChildren = item.getChildren(gameItemID: String(self.item.itemID)).reversed()
        super.init(nibName: nil, bundle: nil)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableHeader()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        sizeHeaderToFit()
    }
    
    func setupTableHeader() {
        let containerView = UITableViewHeaderFooterView()
        containerView.translatesAutoresizingMaskIntoConstraints = false;
        let imageView = UIImageView(image: item.getItemImage())
        imageView.translatesAutoresizingMaskIntoConstraints = false
//        let label = UILabel()
//        label.translatesAutoresizingMaskIntoConstraints = false;
//        label.text = item.name
//        label.textColor = .black
//        label.textAlignment = .center
//        label.sizeToFit()
        
        let headerView = UIView()
        headerView.translatesAutoresizingMaskIntoConstraints = false;
        headerView.backgroundColor = item.getItemImageBackgroundColor()
        headerView.addSubview(imageView)
//        headerView.addSubview(label)
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
            imageView.heightAnchor.constraint(equalToConstant: 100),
            imageView.widthAnchor.constraint(equalToConstant: 100)
        ]
        NSLayoutConstraint.activate(imageViewConstraints)
        
//        let labelConstraints = [
//            label.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 8),
//            label.centerXAnchor.constraint(equalTo: headerView.centerXAnchor),
//            label.bottomAnchor.constraint(equalTo: headerView.bottomAnchor)
//        ]
//        NSLayoutConstraint.activate(labelConstraints)
    }
    
    func sizeHeaderToFit() {
        if let headerView = self.baseTableView.tableHeaderView {
            
            headerView.setNeedsLayout()
            headerView.layoutIfNeeded()
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = UITableViewCell(style: .subtitle, reuseIdentifier: nil)
        cell.detailTextLabel?.numberOfLines = 0
        let section = ItemTableSection(rawValue: indexPath.section)
        let row = ItemTableRow(rawValue: indexPath.row)
        switch section {
        case .itemDetails:
            switch row {
            case .statsAndGold:
                cell =  CellFactory.createItemDetailsCell(gameItem: self.item)
                
            case .active:
                if self.item.active != "" {
                    cell.textLabel?.text = "Active"
                    cell.detailTextLabel?.text = self.item.active
                }
                else {
                    cell.textLabel?.text = "Passive"
                    cell.detailTextLabel?.text = self.item.passive
                }
                
            case .passive:
                cell.textLabel?.text = "Passive"
                cell.detailTextLabel?.text = self.item.passive
                
            default:
                break
            }
            
        case .buildProcess:
//            let gameItemID = String(self.item.children[indexPath.row])
//            if let gameItem = FaultDataRepository.shared.getGameItems()[gameItemID]{
            cell = CellFactory.createBasicItemCell(gameItem: self.itemChildren[indexPath.row])
//            }
            
        default:
            break
        }
        
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        var rows = 0
        let tableSection = ItemTableSection(rawValue: section)
        switch tableSection {
        case .itemDetails:
            rows = 1
            if self.item.active != "" {
                rows += 1
            }
            if self.item.passive != "" {
                rows += 1
            }
            
        case .buildProcess:
            rows = self.itemChildren.count
            
        default:
            break
        }
        
        return rows
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return self.item.children.count != 0 ? 2 : 1
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let label = UILabel()
        label.textAlignment = .center
        let sectionType = ItemTableSection(rawValue: section)
        switch sectionType{
        case .itemDetails:
            label.text = item.name
        case .buildProcess:
            label.text = "Build Items"
        default:
            break
        }
        
        return label
    }

}

////stackview for buiid process
//case .buildProcess:
//cell = UITableViewCell()
////            let containerView = UIView()
//let stackView = UIStackView()
//stackView.translatesAutoresizingMaskIntoConstraints = false
//stackView.axis = .horizontal
//stackView.alignment = .center
//stackView.distribution = .fillEqually
////            containerView.addSubview(stackView)
//let imageView1 = UIImageView(image: item.getItemImage())
//imageView1.backgroundColor = item.getItemImageBackgroundColor()
//
//let imageView2 = UIImageView(image: item.getItemImage())
//imageView2.backgroundColor = item.getItemImageBackgroundColor()
//
//let imageView3 = UIImageView(image: item.getItemImage())
//imageView3.backgroundColor = item.getItemImageBackgroundColor()
//
//let imageView4 = UIImageView(image: item.getItemImage())
//imageView4.backgroundColor = item.getItemImageBackgroundColor()
//
//stackView.addArrangedSubview(imageView1)
//stackView.addArrangedSubview(imageView2)
//stackView.addArrangedSubview(imageView3)
//stackView.addArrangedSubview(imageView4)
//cell.contentView.addSubview(stackView)
//let stackViewConstraints = [
//    stackView.topAnchor.constraint(equalTo: cell.topAnchor),
//    stackView.bottomAnchor.constraint(equalTo: cell.bottomAnchor),
//    stackView.leadingAnchor.constraint(equalTo: cell.leadingAnchor),
//    stackView.trailingAnchor.constraint(equalTo: cell.trailingAnchor)
//]
//NSLayoutConstraint.activate(stackViewConstraints)
//
////            let image1Constraints = [
////                imageView1.heightAnchor.constraint(equalToConstant: 75),
////                imageView1.widthAnchor.constraint(equalToConstant: 75)
////            ]
////            NSLayoutConstraint.activate(image1Constraints)
////            let image2Constraints = [
////                imageView2.heightAnchor.constraint(equalToConstant: 75),
////                imageView2.widthAnchor.constraint(equalToConstant: 75)
////            ]
////            NSLayoutConstraint.activate(image2Constraints)
////            let image3Constraints = [
////                imageView3.heightAnchor.constraint(equalToConstant: 75),
////                imageView3.widthAnchor.constraint(equalToConstant: 75)
////            ]
////            NSLayoutConstraint.activate(image3Constraints)
////            let image4Constraints = [
////                imageView4.heightAnchor.constraint(equalToConstant: 75),
////                imageView4.widthAnchor.constraint(equalToConstant: 75)
////            ]
////            NSLayoutConstraint.activate(image4Constraints)
