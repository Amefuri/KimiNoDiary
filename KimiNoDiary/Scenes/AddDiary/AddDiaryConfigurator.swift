//
//  AddDiaryConfigurator.swift
//  KimiNoDiary
//
//  Created by peerapat atawatana on 11/13/2559 BE.
//  Copyright (c) 2559 DaydreamClover. All rights reserved.
//

import UIKit

// MARK: Connect View, Interactor, and Presenter

extension AddDiaryInteractor: AddDiaryViewControllerOutput, AddDiaryRouterDataSource, AddDiaryRouterDataDestination {
}

extension AddDiaryPresenter: AddDiaryInteractorOutput {
}

class AddDiaryConfigurator {
    // MARK: Object lifecycle
    
    /*class var sharedInstance: AddDiaryConfigurator {
        struct Static {
            static var instance: AddDiaryConfigurator?
            static var token: dispatch_once_t = 0
        }
        
        dispatch_once(&Static.token) {
            Static.instance = AddDiaryConfigurator()
        }
        
        return Static.instance!
    }*/
    
    static let sharedInstance:AddDiaryConfigurator = AddDiaryConfigurator()
    
    // MARK: Configuration
    
    func configure(viewController: AddDiaryViewController) {
        
        let presenter = AddDiaryPresenter()
        presenter.output = viewController
        
        let interactor = AddDiaryInteractor()
        interactor.output = presenter
        
        let router = AddDiaryRouter(viewController:viewController, dataSource:interactor, dataDestination:interactor)
        
        viewController.output = interactor
        viewController.router = router
    }
}
