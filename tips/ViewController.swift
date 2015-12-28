//
//  ViewController.swift
//  tips
//
//  Created by Joel Annenberg on 12/2/15.
//  Copyright © 2015 CodePath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var toSettingsButton: UIBarButtonItem!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billLabel: UILabel!
    @IBOutlet weak var tipName: UILabel!
    @IBOutlet weak var totalName: UILabel!
    @IBOutlet weak var bottomLabel: UILabel!
    @IBOutlet weak var div: UIView!
    
    
    let tipPercentages = [0.18, 0.2, 0.22]
    
    // Set colors
    let lightBackground = UIColor(red: 218/255, green: 234/255, blue: 239/255, alpha: 1)
    let lightText = UIColor.blackColor()
    let darkBackground = UIColor(red: 39/255, green: 47/255, blue: 50/255, alpha: 1)
    let darkText = UIColor.whiteColor()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Read tip percentage and update calculations
    @IBAction func onEditingChanged(sender: AnyObject) {
        let tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        let billAmount = NSString(string: billField.text!).doubleValue
        let tip = billAmount * tipPercentage
        let total = billAmount + tip
        
        // Format tip and total label text
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        // Make billField the first responder
        billField.becomeFirstResponder()
        
        // Load defaults
        let defaults = NSUserDefaults.standardUserDefaults()
        let defaultTip = defaults.integerForKey("defaultTip")
        
        // Apply defaultTip to tipPercentage and recalculate
        switch defaultTip {
        case 0...2:
            tipControl.selectedSegmentIndex = defaultTip
            let tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
            let billAmount = NSString(string: billField.text!).doubleValue
            let tip = billAmount * tipPercentage
            let total = billAmount + tip
            // Reformat
            tipLabel.text = String(format: "$%.2f", tip)
            totalLabel.text = String(format: "$%.2f", total)
        default:
            tipControl.selectedSegmentIndex = 0
        }
        
        // Load theme
        let theme = defaults.integerForKey("theme")
        
        // Apply theme colors
        if theme == 0 {
            self.view.backgroundColor = lightBackground
            billLabel.textColor = lightText
            tipName.textColor = lightText
            tipLabel.textColor = lightText
            div.tintColor = lightText
            totalName.textColor = lightText
            totalLabel.textColor = lightText
            tipControl.tintColor = lightText
            bottomLabel.textColor = lightText
        } else {
            self.view.backgroundColor = darkBackground
            billLabel.textColor = darkText
            tipName.textColor = darkText
            tipLabel.textColor = darkText
            div.tintColor = darkText
            totalName.textColor = darkText
            totalLabel.textColor = darkText
            tipControl.tintColor = darkText
            bottomLabel.textColor = darkText
        }
        
    }

}