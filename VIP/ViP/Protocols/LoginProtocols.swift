//
//  LoginProtocols.swift
//  ViP
//
//  Created by Klevison Matias on 6/15/16.
//  Copyright (c) 2016 CocoaHeads. All rights reserved.
//

import Foundation

protocol LoginViewProtocol: class {
    var presenter: LoginPresenterProtocol? { get set }
    /**
    * Add here your methods for communication PRESENTER -> VIEW
    */
    
    func olhaiTodosOsTenis()
}

protocol LoginPresenterProtocol: class {
    
    var view: LoginViewProtocol? { get set }
    var interactor: LoginInteractorInputProtocol? { get set }
    
    /**
    * Add here your methods for communication VIEW -> PRESENTER
    */
    
    func queroTodosOsTenis()
    
}

protocol LoginInteractorOutputProtocol: class {
    /**
    * Add here your methods for communication INTERACTOR -> PRESENTER
    */
}

protocol LoginInteractorInputProtocol: class {
    var presenter: LoginInteractorOutputProtocol? { get set }
    var APIDataManager: LoginAPIDataManagerInputProtocol? { get set }
    var localDatamanager: LoginLocalDataManagerInputProtocol? { get set }
    /**
    * Add here your methods for communication PRESENTER -> INTERACTOR
    */
    
    func souOIterectorEvouConsultarPsTenis()
}

protocol LoginDataManagerInputProtocol: class {
    /**
    * Add here your methods for communication INTERACTOR -> DATAMANAGER
    */
}

protocol LoginAPIDataManagerInputProtocol: class {
    /**
    * Add here your methods for communication INTERACTOR -> APIDATAMANAGER
    */
}

protocol LoginLocalDataManagerInputProtocol: class {
    /**
    * Add here your methods for communication INTERACTOR -> LOCALDATAMANAGER
    */
}
