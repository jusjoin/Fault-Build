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
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return ItemAttribute.allCases.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let row = ItemAttribute(rawValue: indexPath.row)
        let cell = FBTableViewCell(style: .default, reuseIdentifier: "ItemFilterCell")
        switch row {
        case .attackSpeed:
            cell.textLabel?.text = ItemAttribute.attackSpeed.displayName()
            
        case .critChance:
            cell.textLabel?.text = ItemAttribute.critChance.displayName()
            
        case .health:
            cell.textLabel?.text = ItemAttribute.health.displayName()
            
        case .healthRegenRate:
            cell.textLabel?.text = ItemAttribute.healthRegenRate.displayName()
            
        case .lifesteal:
            cell.textLabel?.text = ItemAttribute.lifesteal.displayName()
            
        case .mana:
            cell.textLabel?.text = ItemAttribute.mana.displayName()
            
        case .manaRegenRate:
            cell.textLabel?.text = ItemAttribute.manaRegenRate.displayName()
            
        case .movementSpeed:
            cell.textLabel?.text = ItemAttribute.movementSpeed.displayName()
            
        case .ouchieArmor:
            cell.textLabel?.text = ItemAttribute.ouchieArmor.displayName()
            
        case .ouchiePenetration:
            cell.textLabel?.text = ItemAttribute.ouchiePenetration.displayName()
            
        case .ouchPower:
            cell.textLabel?.text = ItemAttribute.ouchPower.displayName()
            
        case .pctCDR:
            cell.textLabel?.text = ItemAttribute.pctCDR.displayName()
            
        case .sizzleArmor:
            cell.textLabel?.text = ItemAttribute.sizzleArmor.displayName()
            
        case .sizzlePenetration:
            cell.textLabel?.text = ItemAttribute.sizzlePenetration.displayName()
            
        case .zapPower:
            cell.textLabel?.text = ItemAttribute.zapPower.displayName()
            
        default:
            break
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
