//
//  ViewController.swift
//  tippy
//
//  Created by Divya Nagaraj on 9/8/19.
//  Copyright © 2019 divyanagaraj. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var perPersonLabel: UILabel!
    @IBOutlet weak var percentTip: UISegmentedControl!
    @IBOutlet weak var personCount: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        
        let bill = Double(billField.text!) ?? 0
        
        let tipPercentages = [0,0.1,0.2,0.3]
        
        let tip = bill * tipPercentages[percentTip.selectedSegmentIndex]
        let total = bill + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)

        let peopleNumber = [1.0,2.0,3.0,4.0]
        perPersonLabel.text = String(format: "$%.2f", total / peopleNumber[personCount.selectedSegmentIndex])
    }
    
}

