//
//  ItemFilterViewController.swift
//  Fault Build
//
//  Created by Zane on 9/12/20.
//  Copyright © 2020 JusDev Studios. All rights reserved.
//

import UIKit

protocol ItemFilterDelegate: AnyObject {
    func didSelectFilter(selectedFilters: [ItemAttribute: String])
}

class SelectItemFilterViewController: BaseViewController {
    var delegate: ItemFilterDelegate?
    var itemFilters = [ItemAttribute: String]()
    
    init(delegate: ItemFilterDelegate, filters: [ItemAttribute: String]) {
        super.init(nibName: nil, bundle: nil)
        self.delegate = delegate
        self.itemFilters = filters
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Filters"
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
        // #warning Incomplete implementation, return the number of rows
        return ItemAttribute.allCases.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = FBTableViewCell(style: .default, reuseIdentifier: "ItemFilterCell")
        if let attribute = ItemAttribute(rawValue: indexPath.row) {
            cell.textLabel?.text = attribute.displayName()
            cell.accessoryType = self.itemFilters[attribute] != nil ? .checkmark : .none
        }
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let selectedAttribute = ItemAttribute(rawValue: indexPath.row) {
            if self.itemFilters[selectedAttribute] != nil {
                self.itemFilters.removeValue(forKey: selectedAttribute)
                if let cell = tableView.cellForRow(at: indexPath) {
                    cell.accessoryType = .none
                }
            }
            else {
                self.itemFilters[selectedAttribute] = selectedAttribute.description()
                if let cell = tableView.cellForRow(at: indexPath) {
                    cell.accessoryType = .checkmark
                }
            }
        }
    }
    
    @objc func doneButtonTapped() {
        delegate?.didSelectFilter(selectedFilters: self.itemFilters)
        self.navigationController?.popViewController(animated: true)
    }
}
