//
//  BaseViewController.swift
//  Fault Build
//
//  Created by Zane on 8/3/20.
//  Copyright © 2020 JusDev Studios. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let baseTableView:UITableView = {
       let tableView = UITableView()
        tableView.backgroundColor = .white
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    let mainContentView:UIView = {
        let view = UIView()
        view.backgroundColor = .black
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(self.mainContentView)
        self.mainContentView.addSubview(baseTableView)
        self.setupMainContentView()
//        self.setupBaseTableView()
    }
    
    func setupMainContentView() {
        //Content view
        self.mainContentView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        self.mainContentView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        self.mainContentView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor).isActive = true
        self.mainContentView.centerYAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.centerYAnchor).isActive = true
        self.mainContentView.centerXAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.centerXAnchor).isActive = true
    }
    
    func setupBaseTableView() {
        self.baseTableView.delegate = self
        self.baseTableView.dataSource = self
        self.baseTableView.topAnchor.constraint(equalTo: self.mainContentView.topAnchor).isActive = true
        self.baseTableView.bottomAnchor.constraint(equalTo: self.mainContentView.bottomAnchor).isActive = true
        self.baseTableView.leadingAnchor.constraint(equalTo: self.mainContentView.leadingAnchor).isActive = true
        self.baseTableView.trailingAnchor.constraint(equalTo: self.mainContentView.trailingAnchor).isActive = true
        self.mainContentView.centerYAnchor.constraint(equalTo: self.mainContentView.centerYAnchor).isActive = true
        self.mainContentView.centerXAnchor.constraint(equalTo: self.self.mainContentView.centerXAnchor).isActive = true
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: nil)
        cell.textLabel?.text = "Text label"
        cell.detailTextLabel?.text = "Detail text label"
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        return
    }
}
