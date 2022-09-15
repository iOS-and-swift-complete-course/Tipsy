//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Chris Hand on 9/15/22.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var settingsLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    
    @IBAction func recalculatePressed(_ sender: Any) {
        dismiss(animated: true)
    }
    
    
    
    
    
    
}
