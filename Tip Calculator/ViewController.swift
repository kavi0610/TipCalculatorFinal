//
//  ViewController.swift
//  Tip Calculator
//
//  Created by KavithaMuralisekar on 2/28/17.
//  Copyright © 2017 KavithaMuralisekar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   //Initialize the outlets
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billValue: UITextField!
    @IBOutlet weak var percentSelected: UISegmentedControl!
    @IBOutlet weak var totaltipLabel: UILabel!
    @IBOutlet weak var tipPerPersonLabel: UILabel!
    @IBOutlet weak var totalPerPersonLabel: UILabel!
    @IBOutlet weak var splitByLabel: UILabel!
    @IBOutlet weak var splitBySlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Text box gets the focus
        billValue.becomeFirstResponder()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func onTap(_ sender: Any) {
        // End editing on tap gestures
        view.endEditing(true)
       
    }
    @IBAction func calculateTip(_ sender: AnyObject) {
        
        totalLabel.textColor = UIColor.red
        let percentages = [0.10,0.18,0.25]
        let billAmount = Double(billValue.text!) ?? 0
        let splitByValue = Int(splitBySlider.value)
        
        // Math behind the tip and split
        let totalTipAmount = percentages[percentSelected.selectedSegmentIndex] * billAmount
        let tipPerPersonAmount = (totalTipAmount)/Double(splitByValue)
        let amountPerPerson = (billAmount)/Double(splitByValue)
        let totalAmountPerPerson = tipPerPersonAmount + amountPerPerson
        let totalAmount = billAmount + totalTipAmount
        
        // Set values to the labels
        splitByLabel.text = String(format: "%d", splitByValue)
        totaltipLabel.text = String(format: "$%.2f", totalTipAmount)
        tipPerPersonLabel.text = String(format: "$%.2f", tipPerPersonAmount)
        totalPerPersonLabel.text = String(format: "$%.2f", totalAmountPerPerson)
        totalLabel.text = String(format: "$%.2f", totalAmount)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
        

    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        //Carry over the percentage selected from the settings screen
        let defaults = UserDefaults.standard
        let newPercentage = defaults.integer(forKey: "Tip_Segment_Index")
        percentSelected.selectedSegmentIndex = newPercentage
        
        // Change background color based on percentage selected
        switch  newPercentage{
        case 1:
            self.view.backgroundColor = UIColor(red: 0xfd/255,green: 0xe8/255,blue: 0xd7/255,alpha: 1.0)
        case 2:
            self.view.backgroundColor = UIColor(red: 0xe8/255,green: 0xe8/245,blue: 0xd7/238,alpha: 1.0)
        default:
            self.view.backgroundColor = UIColor(red: 0xd7/255,green: 0xe8/255,blue: 0xfd/255,alpha: 1.0)
        }
        
        // call to calculate tip after the value has changed
        calculateTip(true as AnyObject)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        //print("view will disappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        //print("view did disappear")
}
    
    

}
