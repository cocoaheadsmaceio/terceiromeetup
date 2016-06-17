//
//  LoginPresenter.swift
//  ViP
//
//  Created by Klevison Matias on 6/15/16.
//  Copyright (c) 2016 CocoaHeads. All rights reserved.
//

import Foundation

class LoginPresenter: LoginPresenterProtocol, LoginInteractorOutputProtocol {
    weak var view: LoginViewProtocol?
    var interactor: LoginInteractorInputProtocol?
    
    init(view: LoginViewProtocol) {
        self.view = view
        interactor = LoginInteractor()
        interactor?.presenter = self
    }
    
    func queroTodosOsTenis() {
        interactor?.souOIterectorEvouConsultarPsTenis()
    }
}