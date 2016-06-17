//
//  LoginViewController.swift
//  ViP
//
//  Created by Klevison Matias on 6/15/16.
//  Copyright (c) 2016 CocoaHeads. All rights reserved.
//

import Foundation
import UIKit

final class LoginViewController: UIViewController {
    
    var presenter: LoginPresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        presenter = LoginPresenter(view: self)
        presenter?.queroTodosOsTenis()
    }
    
}

extension LoginViewController: LoginViewProtocol {
    
    func olhaiTodosOsTenis() {
        
    }
    
}