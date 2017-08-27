//
//  DiaryByListRouter.swift
//  KimiNoDiary
//
//  Created by peerapat atawatana on 11/13/2559 BE.
//  Copyright (c) 2559 DaydreamClover. All rights reserved.
//

import UIKit

protocol DiaryByListRouterInput {
    
}

protocol DiaryByListRouterDataSource:class {
    
}

protocol DiaryByListRouterDataDestination:class {
    
}

class DiaryByListRouter: DiaryByListRouterInput {
    
    weak var viewController:DiaryByListViewController!
    weak private var dataSource:DiaryByListRouterDataSource!
    weak var dataDestination:DiaryByListRouterDataDestination!
    
    init(viewController:DiaryByListViewController, dataSource:DiaryByListRouterDataSource, dataDestination:DiaryByListRouterDataDestination) {
        self.viewController = viewController
        self.dataSource = dataSource
        self.dataDestination = dataDestination
    }
    
    // MARK: Navigation
    
    // MARK: Communication
    
    func passDataToNextScene(segue: UIStoryboardSegue) {
        // NOTE: Teach the router which scenes it can communicate with
        
    }
}
