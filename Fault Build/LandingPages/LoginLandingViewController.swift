//
//  LoginLandingViewController.swift
//  Fault Build
//
//  Created by Zane on 8/2/20.
//  Copyright © 2020 JusDev Studios. All rights reserved.
//

import UIKit

class LoginLandingViewController: UIViewController {

    private let loginContentView:UIView = {
        let view = UIView()
        view.backgroundColor = .black
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let userNameTextField:UITextField = {
        let textField = UITextField()
        textField.backgroundColor = .white
        textField.placeholder = "LoginPlaceHolderTextUserName".localize()
        textField.borderStyle = .roundedRect
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    private let passwordTextField:UITextField = {
        let textField = UITextField()
        textField.placeholder = "LoginPlaceHolderTextPassword".localize()
        textField.borderStyle = .roundedRect
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    private let loginButton:UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .blue
        button.setTitle("LoginButtonTitle".localize(), for: .normal)
        button.tintColor = .white
        button.layer.cornerRadius = 5
        button.clipsToBounds = true
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(loginAction(_:)), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.loginContentView.addSubview(self.userNameTextField)
        self.loginContentView.addSubview(self.passwordTextField)
        self.loginContentView.addSubview(self.loginButton)
        self.view.addSubview(self.loginContentView)
        self.setupViewConstraints()
        // Do any additional setup after loading the view.
    }
    
    func setupViewConstraints() {
        //Content view
        self.loginContentView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        self.loginContentView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        self.loginContentView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor).isActive = true
        self.loginContentView.centerYAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.centerYAnchor).isActive = true
        self.loginContentView.centerXAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.centerXAnchor).isActive = true
//        self.loginContentView.sizeToFit()
//        this content view needs to be centered vertically
        
        //Username text field
        self.userNameTextField.topAnchor.constraint(equalTo: self.loginContentView.topAnchor, constant: 40).isActive = true
        self.userNameTextField.leadingAnchor.constraint(equalTo: self.loginContentView.leadingAnchor, constant: 20).isActive = true
        self.userNameTextField.trailingAnchor.constraint(equalTo: self.loginContentView.trailingAnchor, constant: -20).isActive = true
        
        //Password text field
        self.passwordTextField.topAnchor.constraint(equalTo: self.userNameTextField.bottomAnchor, constant: 40).isActive = true
        self.passwordTextField.leadingAnchor.constraint(equalTo: self.loginContentView.leadingAnchor, constant: 20).isActive = true
        self.passwordTextField.trailingAnchor.constraint(equalTo: self.loginContentView.trailingAnchor, constant: -20).isActive = true
        
        //Login button
        self.loginButton.topAnchor.constraint(equalTo: self.passwordTextField.bottomAnchor, constant: 20).isActive = true
        self.loginButton.centerXAnchor.constraint(equalTo: self.loginContentView.centerXAnchor).isActive = true
        self.loginButton.sizeToFit()
    }
    

    @objc func loginAction(_ sender:UIButton!) {
        let mainLanding = MainLandingPageViewController()
        (UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate)?.changeRootViewController(mainLanding)
    }

}
