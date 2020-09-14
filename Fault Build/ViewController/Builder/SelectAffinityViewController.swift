//
//  SelectAffinitiesViewController.swift
//  Fault Build
//
//  Created by Zane on 9/13/20.
//  Copyright © 2020 JusDev Studios. All rights reserved.
//

import UIKit

protocol SelectAffinityDelegate: AnyObject {
    func didSelectAffinity(selectedAffinity: ItemAffinity, affinityNumber: Int)
}

class SelectAffinityViewController: BaseViewController {
    var delegate: SelectAffinityDelegate?
    var affinity: ItemAffinity?
    var affinityNumber: Int
    
    init(delegate: SelectAffinityDelegate, affinityNumber: Int, affinity: ItemAffinity?) {
        self.delegate = delegate
        self.affinity = affinity
        self.affinityNumber = affinityNumber
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Affinities"
//        setupRightBarButton()
    }
    
//    func setupRightBarButton() {
//        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(doneButtonTapped))
//    }

//    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return ItemAffinity.allCases.count
    }
//
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let affinity = ItemAffinity(rawValue: indexPath.row)
        let cell = FBTableViewCell(style: .default, reuseIdentifier: "ItemFilterCell")
        cell.textLabel?.text = affinity?.name
        if affinity == self.affinity {
            cell.accessoryType = .checkmark
        }
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let affinity = ItemAffinity(rawValue: indexPath.row),
            let delegate = self.delegate {
            delegate.didSelectAffinity(selectedAffinity: affinity, affinityNumber: self.affinityNumber)
            self.navigationController?.popViewController(animated: true)
        }
    }

}
