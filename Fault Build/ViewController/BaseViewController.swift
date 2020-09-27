//
//  BaseViewController.swift
//  Fault Build
//
//  Created by Zane on 8/3/20.
//  Copyright © 2020 JusDev Studios. All rights reserved.
//

import UIKit

class BaseViewController: UITableViewController, UISearchBarDelegate {

    let searchBar: UISearchBar = UISearchBar()
    let activityIndicator:UIActivityIndicatorView = {
        var indicatorStyle = UIActivityIndicatorView.Style.whiteLarge
        if #available(iOS 13, *) {indicatorStyle = .large}
        let indicator = UIActivityIndicatorView(style: indicatorStyle)
        indicator.hidesWhenStopped = true
        return indicator
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupTableView()
        self.view.backgroundColor = self.tableView.backgroundColor
    }
    
//    override func viewDidLayoutSubviews() {
//        super.viewDidLayoutSubviews()
//        sizeHeaderToFit()
//    }
    
    func setupTableView() {
        tableView.backgroundColor = ThemeManager().currentTheme.tableViewBackgroundColor
//        tableView.separatorStyle = .none
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.estimatedRowHeight = 44
        tableView.rowHeight = UITableView.automaticDimension
        tableView.sectionHeaderHeight = UITableView.automaticDimension
//        tableView.estimatedSectionHeaderHeight = 25
        tableView.separatorColor = .clear
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.keyboardDismissMode = .onDrag
    }
    
    func setupNavigationBar() {
            
            searchBar.searchBarStyle = .prominent
            searchBar.placeholder = "Item Name"
            searchBar.sizeToFit()
            searchBar.isTranslucent = false
            searchBar.backgroundImage = UIImage()
            searchBar.delegate = self
            self.navigationItem.titleView = searchBar
        }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: nil)
        cell.textLabel?.text = "No Data"
        cell.detailTextLabel?.text = "No Data"
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 0
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func reloadTableView() {
        self.tableView.reloadData()
    }
    
    func setupTableImageHeader(image: UIImage) -> UITableViewHeaderFooterView{
        let containerView = UITableViewHeaderFooterView()
        
        let imageView = UIImageView(image: image)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        let headerView = UIView()
        headerView.translatesAutoresizingMaskIntoConstraints = false;
        headerView.addSubview(imageView)
        containerView.addSubview(headerView)

        let headerViewConstraints = [
            headerView.topAnchor.constraint(equalTo: containerView.topAnchor),
            headerView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor),
            headerView.widthAnchor.constraint(equalTo: containerView.widthAnchor),
            headerView.centerXAnchor.constraint(equalTo: containerView.centerXAnchor)
        ]
        NSLayoutConstraint.activate(headerViewConstraints)

        let imageViewConstraints = [
            imageView.topAnchor.constraint(equalTo: headerView.topAnchor),
            imageView.centerXAnchor.constraint(equalTo: headerView.centerXAnchor),
            imageView.centerYAnchor.constraint(equalTo: headerView.centerYAnchor),
            imageView.heightAnchor.constraint(equalToConstant:
                image.getScaledHeightForWidth(width: self.tableView.frame.width)),
            imageView.widthAnchor.constraint(equalTo: headerView.widthAnchor)
        ]
        NSLayoutConstraint.activate(imageViewConstraints)
        
        return containerView
    }
    
    func setupSectionHeaderLabel(title: String) -> UITableViewHeaderFooterView {
        let containerView = UITableViewHeaderFooterView()
        //        containerView.translatesAutoresizingMaskIntoConstraints = false;
        let label = UILabel()
        label.text = title
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        
        let headerView = UIView()
        headerView.translatesAutoresizingMaskIntoConstraints = false;
        headerView.addSubview(label)
        containerView.addSubview(headerView)
        
        let headerViewConstraints = [
            headerView.topAnchor.constraint(equalTo: containerView.topAnchor),
            headerView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor),
            headerView.widthAnchor.constraint(equalTo: containerView.widthAnchor),
            headerView.centerXAnchor.constraint(equalTo: containerView.centerXAnchor)
        ]
        NSLayoutConstraint.activate(headerViewConstraints)
        
        let labelConstraints = [
            label.topAnchor.constraint(equalTo: headerView.topAnchor),
            label.centerXAnchor.constraint(equalTo: headerView.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: headerView.centerYAnchor)
        ]
        NSLayoutConstraint.activate(labelConstraints)
        
        return containerView
    }
    
    func sizeHeaderToFit() {
        if let headerView = self.tableView.tableHeaderView {
            
            headerView.setNeedsLayout()
            headerView.layoutIfNeeded()
        }
    }
    
    func startActivity() {
//        let activityIndicator = UIActivityIndicatorView(style: .large)
//        activityIndicator.translatesAutoresizingMaskIntoConstraints = false
//        activityIndicator.hidesWhenStopped = true
//        activityIndicator.startAnimating()
//        uiView.addSubview(activityIndicator)
//        activityIndicator.centerXAnchor.constraint(equalTo: uiView.centerXAnchor).isActive = true
//        activityIndicator.centerYAnchor.constraint(equalTo: uiView.centerYAnchor).isActive = true
        
        self.activityIndicator.center = CGPoint(x: UIScreen.main.bounds.maxX / 2, y: UIScreen.main.bounds.maxY / 2)
        self.activityIndicator.startAnimating()
        self.view.addSubview(self.activityIndicator)
    }
    
    func stopActivity() {
        self.activityIndicator.stopAnimating()
    }
}
