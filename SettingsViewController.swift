//
//  SettingsViewController.swift
//  Tip Calculator
//
//  Created by KavithaMuralisekar on 2/28/17.
//  Copyright © 2017 KavithaMuralisekar. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var defaultTipSelector: UISegmentedControl!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Choosing the default value of the tip
        let defaults = UserDefaults.standard
        defaults.set(defaultTipSelector.selectedSegmentIndex, forKey: "Tip_Segment_Index")
        print("\(UserDefaults.standard.value(forKey: "Tip_Segment_Index")!)")
        defaults.synchronize()
        
    }
    @IBAction func tipSelectorChanged(_ sender: Any) {
        viewWillAppear(true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
