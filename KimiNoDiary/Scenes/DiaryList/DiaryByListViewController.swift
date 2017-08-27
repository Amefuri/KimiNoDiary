//
//  DiaryByListViewController.swift
//  KimiNoDiary
//
//  Created by peerapat atawatana on 11/13/2559 BE.
//  Copyright (c) 2559 DaydreamClover. All rights reserved.
//

import UIKit
import MZFormSheetPresentationController

protocol DiaryByListViewControllerInput {
    
}

protocol DiaryByListViewControllerOutput {
    
}

class DiaryByListViewController: UIViewController, DiaryByListViewControllerInput {
    
    var output: DiaryByListViewControllerOutput!
    var router: DiaryByListRouter!
    
    // MARK: IBOutlet 
    
    @IBOutlet weak var tableView:UITableView!
    
    // MARK: IBAction
    
    @IBAction func didClickOnAdd() {
        let navigationController = self.storyboard!.instantiateViewController(withIdentifier: "AddDiaryViewController") as! AddDiaryViewController
        let formSheetController = MZFormSheetPresentationViewController(contentViewController: navigationController)
        formSheetController.presentationController?.contentViewSize = CGSize(width: view.frame.width * 0.9, height: view.frame.height * 0.75)  // or pass in UILayoutFittingCompressedSize to size automatically with auto-layout
        formSheetController.contentViewCornerRadius = 16
        
        self.present(formSheetController, animated: true, completion: nil)
    }
    
    // MARK: Object lifecycle
    
    override func awakeFromNib() {
        super.awakeFromNib()
        DiaryByListConfigurator.sharedInstance.configure(viewController: self)
    }
    
    // MARK: View lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
    }
    
    // MARK: Private function
    
    func setupTableView() {
        tableView.delegate          = self
        tableView.dataSource        = self
        tableView.tableFooterView   = UIView(frame: CGRect.zero)
    }
    
    // MARK: Event handling
    
    // MARK: Display logic
    
}


//This should be on configurator but for some reason storyboard doesn't detect ViewController's name if placed there
extension DiaryByListViewController: DiaryByListPresenterOutput {
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        router.passDataToNextScene(segue: segue)
    }
}
