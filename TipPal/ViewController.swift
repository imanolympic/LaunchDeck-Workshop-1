//
//  ViewController.swift
//  TipPal
//
//  Created by Theron Mansilla on 10/15/20.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var headerLabel: UILabel!
    
    @IBOutlet weak var billAmountLabel: UILabel!
    @IBOutlet weak var billAmountTextField: UITextField!
    
    @IBOutlet weak var tipPercentageLabel: UILabel!
    @IBOutlet weak var tipPercentageTextField: UITextField!
    
    @IBOutlet weak var totalTipLabel: UILabel!
    
    @IBAction func computeTip(_ sender: Any) {
        let billAmount:Double = Double(billAmountTextField.text!)!
        let tipPercentage:Double = Double(tipPercentageTextField.text!)!
        
        print(billAmount)
        print(tipPercentage)
        
        let tipAmount:Double = billAmount * (tipPercentage/100)
        
        self.totalTipLabel.text = "$\(tipAmount)"
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

