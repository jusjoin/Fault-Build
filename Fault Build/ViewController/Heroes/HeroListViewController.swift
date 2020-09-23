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
    
    private enum TableSections: Int, CaseIterable {
        case filters
        case heroes
    }
    
    let numberOfHeroesPerRow = 3
    var heroIcons = [String: UIImage]()
    var heroRowDictionary = [Int: [String]]()
    var currentFilter: HeroRole?
    
    init(){
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Heroes"
        self.startActivity()
        self.getHeroesAndIcons()
        self.currentFilter = nil
    }
    
    func getHeroesAndIcons() {
        FaultDataRepository.shared.getHeroes(completion: { [weak self] in
            if let self = self {
                let group = DispatchGroup()
                for hero in FaultDataRepository.shared.getHeroesDictionary() {
                    group.enter()
                    FaultBuildHelper.getImage(imageURL: hero.value.iconURL, completion: { image in
                        self.heroIcons[hero.key] = image
                        group.leave()
                    })
                }
                group.notify(queue: DispatchQueue.main) {
                    self.sortHeroes()
                    self.reloadTableView()
                    self.stopActivity()
                }
            }
        })
    }
    
    func sortHeroes() {
        self.heroRowDictionary = [Int: [String]]()
        let heroes = self.currentFilter != nil ? FaultDataRepository.shared.getFilteredHeroesDictionary() : FaultDataRepository.shared.getHeroesDictionary()
        let heroKeys = Array(heroes.keys).sorted()
        var numberOfRows = Int(heroes.count / self.numberOfHeroesPerRow)
        if heroes.count % numberOfHeroesPerRow > 0 {
            numberOfRows += 1
        }
        var currentHeroKey = 0
        for row in 0...numberOfRows - 1 {
            self.heroRowDictionary[row] = [String]()
            for _ in 0...self.numberOfHeroesPerRow - 1 {
                self.heroRowDictionary[row]?.append(heroKeys[currentHeroKey])
                currentHeroKey += 1
                if currentHeroKey >= heroes.count {
                    return
                    
                }
            }
        }
    }
    
    func makeHeroButton(heroName: String) -> UIButton {
        let button = UIButton(type: .custom)
        button.imageView?.contentMode = .scaleAspectFit
        if let hero = FaultDataRepository.shared.getHeroesDictionary()[heroName] {
            button.setImage(heroIcons[hero.name], for: .normal)
            button.addTarget(self, action: #selector(self.heroImageButtonClick(_:)), for: .touchUpInside)
        }
        return button
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let tableSection = TableSections(rawValue: section)
        var numberOfRows = 0
        switch tableSection {
        case .filters:
            numberOfRows = 1
        case .heroes:
            numberOfRows = self.heroRowDictionary.count
        default:
            numberOfRows = 0
        }
        return numberOfRows
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return TableSections.allCases.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = FBTableViewCell(style: .default, reuseIdentifier: "cell")
        var buttons = [UIButton]()
        var buttonTitles = [String]()
        let tableSection = TableSections(rawValue: indexPath.section)
        switch tableSection {
        case .filters:
            cell.accessoryType = .disclosureIndicator
            if let filter = self.currentFilter {
                cell.textLabel?.text = filter.name
                cell.imageView?.image = UIImage(named: filter.imageName)
                cell.imageView?.backgroundColor = .black
            }
            else {
                cell.textLabel?.text = "All Heroes"
            }
        case .heroes:
            if let heroes = heroRowDictionary[indexPath.row] {
                for hero in heroes {
                    let button = makeHeroButton(heroName: hero)
                    button.tag = Heroes.heroIDFromName(name: hero)
                    buttons.append(button)
                    buttonTitles.append(hero)
                }
                cell = ImageButtonTableViewCell(buttons: buttons, buttonTitles: buttonTitles, tableView: self.tableView, reuseIdentifier: nil)
            }
        default:
            break
        }
    
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == TableSections.filters.rawValue {
            let heroFilterViewController = SelectHeroFilterViewController(selectedFilter: self.currentFilter)
            heroFilterViewController.delegate = self
            self.navigationController?.pushViewController(heroFilterViewController, animated: true)
        }
    }
    
    @objc func heroImageButtonClick(_ sender: UIButton) {
        var hero: Hero?
        if let heroID = Heroes(rawValue: sender.tag) {
            hero = FaultDataRepository.shared.getHeroesDictionary()[heroID.name]
            
            if let hero = hero {
                let heroViewController = HeroViewController(withHero: hero)
                self.navigationController?.pushViewController(heroViewController, animated: true)
            }
        }
    }

}

extension HeroListViewController: HeroFilterDelegate {
    func didSelectFilter(selectedFilter: HeroRole?) {
        if let selectedFilter = selectedFilter {
            self.currentFilter = selectedFilter
            FaultDataRepository.shared.filterHeroesDictionary(role: selectedFilter)
            self.sortHeroes()
            self.reloadTableView()
        }
    }
    
    
}
