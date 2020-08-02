//
//  ViewController.swift
//  tip
//
//  Created by Jeffrey Stone on 8/1/20.
//  Copyright © 2020 Codepath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipPercentageLabel: UILabel!
    @IBOutlet weak var tipAmountSegmentedControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: Any) {
        
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        
        // 1. Get the initial bill amount and calculate the tips.
        let bill = Double(billAmountTextField.text!) ?? 0
        let tipPercentages = [0.15, 0.18, 0.2]
        
        // 2. Calculate the tip and total cost.
        let tip = bill * tipPercentages[tipAmountSegmentedControl.selectedSegmentIndex]
        let Total = bill + tip
        
        // 2. Update the tip and total labels.
        tipPercentageLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", Total)
        
    }
    
}

