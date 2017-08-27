//
//  DiaryByListConfigurator.swift
//  KimiNoDiary
//
//  Created by peerapat atawatana on 11/13/2559 BE.
//  Copyright (c) 2559 DaydreamClover. All rights reserved.
//

import UIKit

// MARK: Connect View, Interactor, and Presenter

extension DiaryByListInteractor: DiaryByListViewControllerOutput, DiaryByListRouterDataSource, DiaryByListRouterDataDestination {
}

extension DiaryByListPresenter: DiaryByListInteractorOutput {
}

class DiaryByListConfigurator {
    // MARK: Object lifecycle
    
    /*class var sharedInstance: DiaryByListConfigurator {
        struct Static {
            static var instance: DiaryByListConfigurator?
            static var token: dispatch_once_t = 0
        }
        
        dispatch_once(&Static.token) {
            Static.instance = DiaryByListConfigurator()
        }
        
        return Static.instance!
    }*/
    
    static let sharedInstance = DiaryByListConfigurator()
    
    // MARK: Configuration
    
    func configure(viewController: DiaryByListViewController) {
        
        let presenter = DiaryByListPresenter()
        presenter.output = viewController
        
        let interactor = DiaryByListInteractor()
        interactor.output = presenter
        
        let router = DiaryByListRouter(viewController:viewController, dataSource:interactor, dataDestination:interactor)
        
        viewController.output = interactor
        viewController.router = router
    }
}
