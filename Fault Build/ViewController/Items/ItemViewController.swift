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
    
    enum ItemTableSection: Int, CaseIterable {
        case tableHeader = 0
        case itemDetails
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
        self.navigationItem.title = self.item.name
    }
    
//    func setupTableHeader() {
//        let containerView = UITableViewHeaderFooterView()
//        containerView.translatesAutoresizingMaskIntoConstraints = false;
//        let imageView = UIImageView(image: item.getItemImage())
//        imageView.translatesAutoresizingMaskIntoConstraints = false
//
//        let headerView = UIView()
//        headerView.translatesAutoresizingMaskIntoConstraints = false;
//        headerView.backgroundColor = item.getItemImageBackgroundColor()
//        headerView.addSubview(imageView)
//        containerView.addSubview(headerView)
//        self.tableView.tableHeaderView = containerView
//
//        let containerViewConstraints = [
//            containerView.topAnchor.constraint(equalTo: self.tableView.topAnchor),
//            containerView.widthAnchor.constraint(equalTo: self.tableView.widthAnchor)
//        ]
//        NSLayoutConstraint.activate(containerViewConstraints)
//
//        let headerViewConstraints = [
//            headerView.topAnchor.constraint(equalTo: containerView.topAnchor),
//            headerView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor),
//            headerView.widthAnchor.constraint(equalTo: containerView.widthAnchor)
//        ]
//        NSLayoutConstraint.activate(headerViewConstraints)
//
//        let imageViewConstraints = [
//            imageView.topAnchor.constraint(equalTo: headerView.topAnchor),
//            imageView.centerXAnchor.constraint(equalTo: headerView.centerXAnchor),
//            imageView.centerYAnchor.constraint(equalTo: headerView.centerYAnchor),
//            imageView.heightAnchor.constraint(equalToConstant: 100),
//            imageView.widthAnchor.constraint(equalToConstant: 100)
//        ]
//        NSLayoutConstraint.activate(imageViewConstraints)
//    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = FBTableViewCell(style: .subtitle, reuseIdentifier: nil)
        cell.detailTextLabel?.numberOfLines = 0
        cell.selectionStyle = .none
        let section = ItemTableSection(rawValue: indexPath.section)
        let row = ItemTableRow(rawValue: indexPath.row)
        switch section {
        case .tableHeader:
            cell = CellFactory.createCenterImageViewCell(
                image: self.item.getItemImage().resize(scaledToSize: CGSize(width: 100, height: 100)))
            cell.backgroundColor = self.item.getItemImageBackgroundColor()
            
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
        var rows = 1
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
        return self.item.children.count != 0 ? ItemTableSection.allCases.count : ItemTableSection.allCases.count - 1
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        var header = UITableViewHeaderFooterView()
        let sectionType = ItemTableSection(rawValue: section)
        switch sectionType{
//        case .itemDetails:
//            header = setupTableImageHeader(image: item.self.getItemImage())
        case .buildProcess:
            header = setupSectionHeaderLabel(title: "Build Items")
        default:
            break
        }
        
        return header
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let section = ItemTableSection(rawValue: indexPath.section)
        if section == ItemTableSection.buildProcess {
            let itemViewControleler = ItemViewController(item: self.itemChildren[indexPath.row])
            self.navigationController?.pushViewController(itemViewControleler, animated: true)
        }
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if section == ItemTableSection.itemDetails.rawValue ||
            section == ItemTableSection.tableHeader.rawValue {
            return 0
        }
        return UITableView.automaticDimension
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
