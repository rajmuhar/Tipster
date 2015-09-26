//
//  ViewController.swift
//  Tipster
//
//  Created by Rajpreet Muhar on 9/26/15.
//  Copyright © 2015 Rajpreet Muhar. All rights reserved.
//

//hi, theses are comments, put anywhere

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipAmountLabel: UILabel!
    //blue laser, click and control
    
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billAmountField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tipAmountLabel.text = "$0.00"
        totalLabel.text = "$0.00"
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func onEditingChange(sender: AnyObject) {
        let tipPercentages = [0.18, 0.20, 0.23]
        let tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        
        //let tipPercentage = tipPercentages[0]
        //var billAmount = billAmountField.text
        //var tipAmount = NSString(string: billAmount!).doubleValue * 0.2
        //print(tipAmount)
        
        let billAmount = NSString(string: billAmountField.text!).doubleValue
        let tipAmount = billAmount * tipPercentage
        let total = billAmount + tipAmount
        
        //print(tipAmount)
        //print(total)
        //print("")
        
        tipAmountLabel.text = "$\(tipAmount)"
        totalLabel.text = "$\(total)"
        
        
        //text field only text, if need numbers, use escape,\, or double value
        
        print(tipControl.selectedSegmentIndex)
    }
}

