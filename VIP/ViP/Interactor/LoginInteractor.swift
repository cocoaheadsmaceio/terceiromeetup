//
//  LoginInteractor.swift
//  ViP
//
//  Created by Klevison Matias on 6/15/16.
//  Copyright (c) 2016 CocoaHeads. All rights reserved.
//

import Foundation

class LoginInteractor: LoginInteractorInputProtocol {
    
    weak var presenter: LoginInteractorOutputProtocol?
    var APIDataManager: LoginAPIDataManagerInputProtocol?
    var localDatamanager: LoginLocalDataManagerInputProtocol?
    
    init() {
        APIDataManager = LoginAPIDataManager()
        localDatamanager = LoginLocalDataManager()
    }
    
    func souOIterectorEvouConsultarPsTenis() {
        
    }
}