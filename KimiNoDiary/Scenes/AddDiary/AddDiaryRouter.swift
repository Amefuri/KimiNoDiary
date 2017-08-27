//
//  AddDiaryRouter.swift
//  KimiNoDiary
//
//  Created by peerapat atawatana on 11/13/2559 BE.
//  Copyright (c) 2559 DaydreamClover. All rights reserved.
//

import UIKit

protocol AddDiaryRouterInput {
    
}

protocol AddDiaryRouterDataSource:class {
    
}

protocol AddDiaryRouterDataDestination:class {
    
}

class AddDiaryRouter: AddDiaryRouterInput {
    
    weak var viewController:AddDiaryViewController!
    weak private var dataSource:AddDiaryRouterDataSource!
    weak var dataDestination:AddDiaryRouterDataDestination!
    
    init(viewController:AddDiaryViewController, dataSource:AddDiaryRouterDataSource, dataDestination:AddDiaryRouterDataDestination) {
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
