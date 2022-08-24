//
//  LoginViewController.swift
//  Messaging App
//
//  Created by IACD-024 on 2022/08/24.
//

import UIKit

class LoginViewController: UIViewController {

    private let scrollView:UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.clipsToBounds = true
        
        return scrollView
    }()
    
    private let imageView: UIImageView = {
        let imageview = UIImageView()
        imageview.image = UIImage(named: "chatApp")
        imageview.contentMode = .scaleAspectFit
        return imageview
    }()
    
    private let emailField:UITextField = {
       let field = UITextField()
        field.autocorrectionType = .no
        field.autocapitalizationType = .none
        field.returnKeyType = .continue
        field.layer.cornerRadius = 9
        field.layer.borderWidth = 1
        field.layer.borderColor = UIColor.lightGray.cgColor
        field.placeholder = " Enter email"
        
        field.leftView = UIView(frame: CGRect(x: 0, y: 0,width: 5,height: 0))
        field.leftViewMode = .always
        field.backgroundColor = .white
        
        return field
    }()
    private let passwordField:UITextField = {
       let field = UITextField()
        field.autocorrectionType = .no
        field.autocapitalizationType = .none
        field.returnKeyType = .done
        field.layer.cornerRadius = 9
        field.layer.borderWidth = 1
        field.layer.borderColor = UIColor.lightGray.cgColor
        field.placeholder = " Enter password"
        
        field.leftView = UIView(frame: CGRect(x: 0, y: 0,width: 5,height: 0))
        field.leftViewMode = .always
        field.backgroundColor = .white
        field.isSecureTextEntry = true
        
        return field
    }()
    
    private let loginButton:UIButton = {
       let button = UIButton()
        button.backgroundColor = .link
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 12
        button.layer.masksToBounds = true
        button.titleLabel?.font = .systemFont(ofSize: 20,weight: .bold)
        return button
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Log In"
        view.backgroundColor = .white

        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Register", style: .done, target: self, action: #selector(didTapRegister))
        
        //add subviews
        view.addSubview(scrollView)
        scrollView.addSubview(imageView)
        scrollView.addSubview(emailField)
        scrollView.addSubview(passwordField)
        scrollView.addSubview(loginButton)
        
        
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        scrollView.frame = view.bounds
        
        let size = scrollView.width/3
        imageView.frame = CGRect(x: (scrollView.width-size)/2, y: 20, width: size, height: size)
        emailField.frame = CGRect(x: 30, y: imageView.bottom + 10, width: scrollView.width-60, height: 52)
        passwordField.frame = CGRect(x: 30, y: emailField.bottom + 10, width: scrollView.width-60, height: 52)
        loginButton.frame = CGRect(x: 30, y: emailField.bottom + 10, width: scrollView.width-60, height: 52)
    
    }
    
    @objc private func didTapRegister(){
        let  vc = RegisterViewController()
        vc.title = "Create Account"
        navigationController?.pushViewController(vc, animated: true)
        
    }
    

   
    
    
    
    
    
    
    
    
    
    
}