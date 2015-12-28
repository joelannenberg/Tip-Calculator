//
//  SettingsViewController.swift
//  tips
//
//  Created by Joel Annenberg on 12/3/15.
//  Copyright © 2015 CodePath. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var defaultTipControl: UISegmentedControl!
    @IBOutlet weak var themeControl: UISegmentedControl!
    @IBOutlet weak var themeLabel: UILabel!
    @IBOutlet weak var defaultTipLabel: UILabel!
    
    // Init user defaults
    let defaults = NSUserDefaults.standardUserDefaults()
    
    // Set colors
    let lightBackground = UIColor(red: 218/255, green: 234/255, blue: 239/255, alpha: 1)
    let lightText = UIColor.blackColor()
    let darkBackground = UIColor(red: 39/255, green: 47/255, blue: 50/255, alpha: 1)
    let darkText = UIColor.whiteColor()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Read and update default tip index
    @IBAction func onEditingChange(sender: UISegmentedControl) {
        defaults.setInteger(sender.selectedSegmentIndex, forKey: "defaultTip")
        defaults.synchronize()
    }
    
    // Read and update theme
    @IBAction func onThemeChange(sender: UISegmentedControl) {
        defaults.setInteger(sender.selectedSegmentIndex, forKey: "theme")
        let theme = defaults.integerForKey("theme")
        defaults.synchronize()
        
        // Assign theme selection
        switch theme {
        case 0...1:
            themeControl.selectedSegmentIndex = theme
        default:
            themeControl.selectedSegmentIndex = 0
        }
        
        // Apply theme colors
        if theme == 0 {
            self.view.backgroundColor = lightBackground
            themeControl.tintColor = lightText
            themeLabel.textColor = lightText
            defaultTipLabel.textColor = lightText
            defaultTipControl.tintColor = lightText
        } else {
            self.view.backgroundColor = darkBackground
            themeControl.tintColor = darkText
            themeLabel.textColor = darkText
            defaultTipLabel.textColor = darkText
            defaultTipControl.tintColor = darkText
        }
    }
    
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        let defaultTip = defaults.integerForKey("defaultTip")
        let theme = defaults.integerForKey("theme")
        
        // Assign default tip index
        switch defaultTip {
        case 0...2:
            defaultTipControl.selectedSegmentIndex = defaultTip
        default:
            defaultTipControl.selectedSegmentIndex = 0
        }
        
        // Assign theme selection
        switch theme {
        case 0...1:
            themeControl.selectedSegmentIndex = theme
        default:
            themeControl.selectedSegmentIndex = 0
        }
        
        // Apply theme colors
        if theme == 0 {
            self.view.backgroundColor = lightBackground
            themeControl.tintColor = lightText
            themeLabel.textColor = lightText
            defaultTipLabel.textColor = lightText
            defaultTipControl.tintColor = lightText
        } else {
            self.view.backgroundColor = darkBackground
            themeControl.tintColor = darkText
            themeLabel.textColor = darkText
            defaultTipLabel.textColor = darkText
            defaultTipControl.tintColor = darkText
        }
        
    }
    
}