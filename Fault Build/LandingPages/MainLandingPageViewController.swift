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
        let profileViewController = ProfileViewController()
        profileViewController.tabBarItem = UITabBarItem(title: "Profile", image: UIImage(named: "second"), selectedImage: UIImage(named: "first"))
        
        let heroesViewController = HeroesViewController()
        heroesViewController.tabBarItem = UITabBarItem(title: "Heroes", image: UIImage(named: "second"), selectedImage: UIImage(named: "first"))
        
        let itemsViewController = ItemsViewController()
        itemsViewController.tabBarItem = UITabBarItem(title: "Items", image: UIImage(named: "second"), selectedImage: UIImage(named: "first"))
        
        let leaderboardViewController = LeaderboardViewController()
        leaderboardViewController.tabBarItem = UITabBarItem(title: "Leaderboard", image: UIImage(named: "second"), selectedImage: UIImage(named: "first"))
        
        
        
        self.viewControllers = [profileViewController, heroesViewController, itemsViewController, leaderboardViewController]
    }

}
