//
//  AddDiaryViewController.swift
//  KimiNoDiary
//
//  Created by peerapat atawatana on 11/13/2559 BE.
//  Copyright (c) 2559 DaydreamClover. All rights reserved.
//

import UIKit

protocol AddDiaryViewControllerInput {
    
}

protocol AddDiaryViewControllerOutput {
    
}

class AddDiaryViewController: UIViewController, AddDiaryViewControllerInput {
    
    var output: AddDiaryViewControllerOutput!
    var router: AddDiaryRouter!
    
    // MARK: IBAction
    
    @IBAction func didClickOnClose() {
        self.dismiss(animated: true, completion: nil)
    }
    
    // MARK: Object lifecycle
    
    override func awakeFromNib() {
        super.awakeFromNib()
        AddDiaryConfigurator.sharedInstance.configure(viewController: self)
    }
    
    // MARK: View lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: Event handling
    
    // MARK: Display logic
    
}


//This should be on configurator but for some reason storyboard doesn't detect ViewController's name if placed there
extension AddDiaryViewController: AddDiaryPresenterOutput {
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        router.passDataToNextScene(segue: segue)
    }
}
