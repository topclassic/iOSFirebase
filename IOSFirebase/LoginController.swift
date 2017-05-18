//
//  LoginController.swift
//  IOSFirebase
//
//  Created by Chotipat on 5/17/2560 BE.
//  Copyright © 2560 Chotipat. All rights reserved.
//

import Foundation
import UIKit

class LoginController: UIViewController {
    
    
    let inputsView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.white
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 5
        view.layer.masksToBounds = true
        return view
    }()
    
    //start sub in sub view
    let nameTextField: UITextField = {
        let ntf = UITextField()
        ntf.placeholder = "Name"
        ntf.translatesAutoresizingMaskIntoConstraints = false
        return ntf
    }()
    let nameView: UIView = {
        let nview = UIView()
        nview.backgroundColor = UIColor(r: 220, g: 220, b: 220)
        nview.translatesAutoresizingMaskIntoConstraints = false
        return nview
    }()
    let emailTextField: UITextField = {
        let etf = UITextField()
        etf.placeholder = "Email"
        etf.translatesAutoresizingMaskIntoConstraints = false
        return etf
    }()
    let emailView: UIView = {
        let eview = UIView()
        eview.backgroundColor = UIColor(r: 220, g: 220, b: 220)
        eview.translatesAutoresizingMaskIntoConstraints = false
        return eview
    }()
    let passTextField: UITextField = {
        let ptf = UITextField()
        ptf.placeholder = "Password"
        ptf.translatesAutoresizingMaskIntoConstraints = false
        ptf.isSecureTextEntry = true
        return ptf
    }()
    let passView: UIView = {
        let pview = UIView()
        pview.backgroundColor = UIColor(r: 220, g: 220, b: 220)
        pview.translatesAutoresizingMaskIntoConstraints = false
        return pview
    }()
    //end
    
    let profileImage: UIImageView = {
        let iview = UIImageView()
        iview.image = UIImage(named: "logo")
        iview.translatesAutoresizingMaskIntoConstraints = false
        return iview
    }()
    
    let loginButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = UIColor(r: 80, g: 101, b: 161)
        button.setTitle("Register", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 5
        button.layer.masksToBounds = true
        return button
    }()
    
    func setupContainerView(){
        
        //setting x, y, width, height constraints
        inputsView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        inputsView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        inputsView.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -24).isActive = true
        inputsView.heightAnchor.constraint(equalToConstant: 150).isActive = true
        
        inputsView.addSubview(nameView)
        inputsView.addSubview(nameTextField)
        inputsView.addSubview(emailView)
        inputsView.addSubview(emailTextField)
        inputsView.addSubview(passView)
        inputsView.addSubview(passTextField)
        setupSubContainerView()
      
    }
    func setupSubContainerView(){
        
        //setting left, top, width, height constraints
        nameView.leftAnchor.constraint(equalTo: inputsView.leftAnchor).isActive = true
        nameView.topAnchor.constraint(equalTo: nameTextField.bottomAnchor).isActive = true
        nameView.widthAnchor.constraint(equalTo: inputsView.widthAnchor).isActive = true
        nameView.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        //setting left, top, width, height constraints
        nameTextField.leftAnchor.constraint(equalTo: inputsView.leftAnchor, constant: 12).isActive = true
        nameTextField.topAnchor.constraint(equalTo: inputsView.topAnchor).isActive = true
        nameTextField.widthAnchor.constraint(equalTo: inputsView.widthAnchor).isActive = true
        nameTextField.heightAnchor.constraint(equalTo: inputsView.heightAnchor, multiplier: 1/3).isActive = true
        
        //setting left, top, width, height constraints
        emailView.leftAnchor.constraint(equalTo: inputsView.leftAnchor).isActive = true
        emailView.topAnchor.constraint(equalTo: emailTextField.bottomAnchor).isActive = true
        emailView.widthAnchor.constraint(equalTo: inputsView.widthAnchor).isActive = true
        emailView.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        //setting left, top, width, height constraints
        emailTextField.leftAnchor.constraint(equalTo: inputsView.leftAnchor, constant: 12).isActive = true
        emailTextField.topAnchor.constraint(equalTo: nameTextField.bottomAnchor).isActive = true
        emailTextField.widthAnchor.constraint(equalTo: inputsView.widthAnchor).isActive = true
        emailTextField.heightAnchor.constraint(equalTo: inputsView.heightAnchor, multiplier: 1/3).isActive = true
        
        //setting left, top, width, height constraints
        passView.leftAnchor.constraint(equalTo: inputsView.leftAnchor).isActive = true
        passView.topAnchor.constraint(equalTo: passTextField.bottomAnchor).isActive = true
        passView.widthAnchor.constraint(equalTo: inputsView.widthAnchor).isActive = true
        passView.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        //setting left, top, width, height constraints
        passTextField.leftAnchor.constraint(equalTo: inputsView.leftAnchor, constant: 12).isActive = true
        passTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor).isActive = true
        passTextField.widthAnchor.constraint(equalTo: inputsView.widthAnchor).isActive = true
        passTextField.heightAnchor.constraint(equalTo: inputsView.heightAnchor, multiplier: 1/3).isActive = true
    }
    func setupContainerLoginButton(){
        
        //setting x, top, width, height constraints
        loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        loginButton.topAnchor.constraint(equalTo: inputsView.bottomAnchor, constant: 12).isActive = true
        loginButton.widthAnchor.constraint(equalTo: inputsView.widthAnchor).isActive = true
        loginButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    func setupContainerImageView(){
        
        //setting x, bottom, width, height constraints
        profileImage.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        profileImage.bottomAnchor.constraint(equalTo: inputsView.topAnchor, constant: -12).isActive = true
        profileImage.widthAnchor.constraint(equalToConstant: 200).isActive = true
        profileImage.heightAnchor.constraint(equalToConstant: 200).isActive = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //set background
        view.backgroundColor = UIColor(r:61, g:91, b:151)
        //view.backgroundColor = UIColor(red: 61/255, green: 91/255, blue: 151/255, alpha: 1)
        
        //add subView in loginView
        view.addSubview(inputsView)
        view.addSubview(loginButton)
        view.addSubview(profileImage)
        
        setupContainerView()
        setupContainerLoginButton()
        setupContainerImageView()
        
    }
    //change icon color on status bar
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return .lightContent
    }
}

extension UIColor {
    convenience init(r: CGFloat, g: CGFloat, b: CGFloat){
        self.init(red: r/255, green: g/255, blue: b/255, alpha: 1)
    }
}

