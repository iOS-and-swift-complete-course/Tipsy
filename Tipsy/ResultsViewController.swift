//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Chris Hand on 9/15/22.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    var tipDetails : TipDetails?
    
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        totalLabel.text = String(format: "%0.2f", tipDetails!.totalPerPerson)
        var percentTipText = String(Int(tipDetails!.tipPercent * 100))
        let message = "Split between \(tipDetails!.numberOfPeople), with \(percentTipText)% tip."
        settingsLabel.text = message
    }
    
    @IBAction func recalculatePressed(_ sender: Any) {
        dismiss(animated: true)
    }
}
