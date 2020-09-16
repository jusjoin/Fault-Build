//
//  HeroesViewController.swift
//  Fault Build
//
//  Created by Zane on 8/2/20.
//  Copyright © 2020 JusDev Studios. All rights reserved.
//
//There are 14 heroes
import UIKit

class HeroListViewController: BaseViewController {
    private let comingSoonLabel:UILabel = {
        let label = UILabel()
        label.text = "Coming Soon"
        label.textColor = .red
        label.font = UIFont.preferredFont(forTextStyle: .headline)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let numberOfHeroesPerRow = 3
    var heroes = [String: Hero]()
    
    init(){
//        self.heroes = [String: Belica]()
        super.init(nibName: nil, bundle: nil)
        FaultDataRepository.shared.getHeroes(completion: { [weak self] in
            if let self = self {
                DispatchQueue.main.async {
                    self.heroes = FaultDataRepository.shared.getHeroesDictionary()
                    self.reloadTableView()
                }
            }
        })
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Heroes"
    }
    
    func makeHeroButton(heroName: String) -> UIButton {
        let button = UIButton(type: .custom)
        button.imageView?.contentMode = .scaleAspectFit
        if let hero = self.heroes[heroName] {
            if let image = UIImage(named: hero.iconName) {
                button.setImage(image, for: .normal)
            }
            button.addTarget(self, action: #selector(buttonClick(_:)), for: .touchUpInside)
        }
        return button
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        var numberOfRows = Int(self.heroes.count / self.numberOfHeroesPerRow)
        if self.self.heroes.count % numberOfHeroesPerRow > 0 {
            numberOfRows += 1
        }
        return numberOfRows
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var buttons = [UIButton]()
        for n in 0...self.numberOfHeroesPerRow-1 {
            let hero = indexPath.row * numberOfHeroesPerRow + n
            if Array(self.heroes.keys).indices.contains(hero) {
                let heroName = Array(self.heroes.keys)[hero]
                let button = makeHeroButton(heroName: heroName)
                button.tag = Heroes.heroIDFromName(name: heroName)
                buttons.append(button)
            }
        }
        let cell = ImageButtonTableViewCell(buttons: buttons, tableView: self.tableView, reuseIdentifier: nil)
        return cell
//        let hero1 = indexPath.row * numberOfHeroesPerRow
//        let hero2 = indexPath.row * numberOfHeroesPerRow + 1
//        let hero3 = indexPath.row * numberOfHeroesPerRow + 2
//        if Array(self.heroes.keys).indices.contains(hero1) {
//            let button = makeHeroButton(heroName: Array(self.heroes.keys)[hero1])
//            button.tag = hero1
//            buttons.append(button)
//        }
//        if Array(self.heroes.keys).indices.contains(hero2) {
//            let button = makeHeroButton(heroName: Array(self.heroes.keys)[hero2])
//            button.tag = hero2
//            buttons.append(button)
//        }
//        if Array(self.heroes.keys).indices.contains(hero3) {
//            let button = makeHeroButton(heroName: Array(self.heroes.keys)[hero3])
//            button.tag = hero3
//            buttons.append(button)
//        }
        
    }
    
    @objc func buttonClick(_ sender: UIButton) {
        var hero: Hero?
        switch sender.tag {
        case Heroes.belica.rawValue:
            hero = self.heroes[Heroes.belica.name]
            
            case Heroes.boris.rawValue:
            hero = self.heroes[Heroes.boris.name]
            
            case Heroes.countess.rawValue:
            hero = self.heroes[Heroes.countess.name]
            
        default:
            break
        }
        if let hero = hero {
            let heroViewController = HeroViewController(withHero: hero)
            self.navigationController?.pushViewController(heroViewController, animated: true)
        }
    }

}
