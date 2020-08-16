//
//  MainLandingPageViewController.swift
//  Fault Build
//
//  Created by Zane on 8/2/20.
//  Copyright © 2020 JusDev Studios. All rights reserved.
//

import UIKit

class MainLandingPageViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabBar()
        // Do any additional setup after loading the view.
    }
    
    func setupTabBar() {
        let profileViewController = UINavigationController(rootViewController: ProfileViewController())
        profileViewController.tabBarItem = UITabBarItem(title: "Profile", image: UIImage(named: "second"), selectedImage: UIImage(named: "first"))
        
        let heroesViewController = UINavigationController(rootViewController: HeroesViewController())
        heroesViewController.tabBarItem = UITabBarItem(title: "Heroes", image: UIImage(named: "second"), selectedImage: UIImage(named: "first"))
        
        let itemListViewController = UINavigationController(rootViewController: ItemListViewController())
        itemListViewController.tabBarItem = UITabBarItem(title: "Items", image: UIImage(named: "second"), selectedImage: UIImage(named: "first"))
        
        let leaderboardViewController = UINavigationController(rootViewController: LeaderboardViewController())
        leaderboardViewController.tabBarItem = UITabBarItem(title: "Leaderboard", image: UIImage(named: "second"), selectedImage: UIImage(named: "first"))
        
        
        
        self.viewControllers = [profileViewController, heroesViewController, itemListViewController, leaderboardViewController]
    }

}
