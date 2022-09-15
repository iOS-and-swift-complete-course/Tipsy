//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    
    @IBAction func tipChanged(_ sender: UIButton) {
        resetButtonState()
        sender.isSelected = true
    }
    
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        splitNumberLabel.text = String(Int(sender.value))
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        if billTextField.text!.isEmpty {
            return
        }
        
        let bill = Double(billTextField.text!)!
        let tip = getSelectedTip()
        let total = bill + bill * tip
        let numberOfPeople = Double(splitNumberLabel.text!)!
        let perPerson = total / numberOfPeople
        print(perPerson)
    }
    
    private func resetButtonState() {
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
    }
    
    private func getSelectedTip() -> Double {
        if zeroPctButton.isSelected {
            return 0.0
        }
        
        if tenPctButton.isSelected {
            return 0.1
        }
        
        return 0.2
    }
}

