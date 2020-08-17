//
//  HeroesViewController.swift
//  Fault Build
//
//  Created by Zane on 8/2/20.
//  Copyright © 2020 JusDev Studios. All rights reserved.
//

import UIKit

class HeroesViewController: BaseViewController {
    private let comingSoonLabel:UILabel = {
        let label = UILabel()
        label.text = "Coming Soon"
        label.textColor = .red
        label.font = UIFont.preferredFont(forTextStyle: .headline)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    init(){
        super.init(nibName: nil, bundle: nil)
        FaultDataRepository.shared.getHeroes(completion: { [weak self] in
            if let self = self {
                DispatchQueue.main.async {
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
    }
    
    func makeHeroButton() -> UIButton {
        let button = UIButton(type: .custom)
        button.imageView?.contentMode = .scaleAspectFit
        if let image = UIImage(named: "Belica_icon") {
            button.setImage(image, for: .normal)
        }
        button.addTarget(self, action: #selector(buttonClick(_:)), for: .touchUpInside)
        return button
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let button1 = makeHeroButton()
        let button2 = makeHeroButton()
        let button3 = makeHeroButton()
        let cell = ImageButtonTableViewCell(button1: button1, button2: button2, button3: button3, tableView: self.baseTableView, reuseIdentifier: nil)
        return cell
    }
    
    @objc func buttonClick(_ sender: Any?) {
        let alert = UIAlertController(title: "Hero Selected", message: "Selected hero Lt Belica", preferredStyle: .alert)

        alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: nil))
        alert.addAction(UIAlertAction(title: "No", style: .cancel, handler: nil))

        self.present(alert, animated: true)
    }

}
