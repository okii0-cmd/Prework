//
//  ViewController.swift
//  Prework
//
//  Created by okii on 8/9/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billAmountTextField.text!) ?? 0
        
        //Calculating tip
        let tipPercentage = [0.15,0.18,0.2]
        let tip = bill * tipPercentage[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        //use calculated value
        tipAmountLabel.text = String(format:"%.2f", tip)
        totalLabel.text = String(format:"%.2f", total)
    }
    

}
