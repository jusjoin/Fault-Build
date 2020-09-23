//
//  HeroFilterTableViewController.swift
//  Fault Build
//
//  Created by Zane on 9/23/20.
//  Copyright © 2020 JusDev Studios. All rights reserved.
//

import UIKit

protocol HeroFilterDelegate: AnyObject {
    func didSelectFilter(selectedFilter: HeroRole?)
}

class SelectHeroFilterViewController: BaseViewController {
    var delegate: HeroFilterDelegate?
    var selectedFilter: HeroRole?
    
    init(selectedFilter: HeroRole?) {
        super.init(nibName: nil, bundle: nil)
        self.selectedFilter = selectedFilter
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Roles"
        setupRightBarButton()
    }
    
    func setupRightBarButton() {
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(doneButtonTapped))
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return HeroRole.allCases.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = FBTableViewCell(style: .default, reuseIdentifier: "cell")
        if let rowData = HeroRole(rawValue: indexPath.row) {
            cell.textLabel?.text = rowData.name
            cell.imageView?.image = UIImage(named:rowData.imageName)
            if rowData == selectedFilter {
                cell.accessoryType = .checkmark
            }
        }
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let rowData = HeroRole(rawValue: indexPath.row)
        if self.selectedFilter == rowData {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
            self.selectedFilter = nil
        }
        else {
            if let selectedFilter = self.selectedFilter {
                tableView.cellForRow(at: IndexPath(row: selectedFilter.rawValue, section: indexPath.section))?.accessoryType = .none
            }
            self.selectedFilter = rowData
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
    }

    @objc func doneButtonTapped() {
        delegate?.didSelectFilter(selectedFilter: self.selectedFilter)
        self.navigationController?.popViewController(animated: true)
    }
}
