//
//  ViewController.swift
//  calculator
//
//  Created by Andre Vincent on 1/16/20.
//  Copyright © 2020 Andre Vincent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var BillLabel: UITextField!
    @IBOutlet weak var TipLabel: UITextField!
    @IBOutlet weak var TotalLabel: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: Any) {
        print("Hello")
        view.endEditing(true)
    }
    
    @IBAction func calculateTips(_ sender: Any) {
        
        // Get bill amount
        let bill = Double(BillLabel.text!) ?? 0
        
        // Calculate the tip and total
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        if tip <= 0 {
            view.backgroundColor = UIColor.red
        }
        else {
            view.backgroundColor = UIColor.blue
        }
        let total = bill + tip
        
        // Update the tip and total labels
        TipLabel.text = String(format:  "$%.2f", tip)
        TotalLabel.text = String(format: "$%.2f", total)
    }
}

