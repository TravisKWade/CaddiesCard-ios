//
//  MainMenuViewController.swift
//  Caddies Card
//
//  Created by Travis Wade on 12/13/19.
//  Copyright © 2019 Branvis Software. All rights reserved.
//

import UIKit

class MainMenuViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupNavigation()
    }
    
    // MARK: - setup
    
    func setupNavigation() {
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    // MARK: - button handlers
    
    @IBAction func newRoundPressed(sender: UIButton) {
        performSegue(withIdentifier: "newRoundSegue", sender: sender)
    }
}
