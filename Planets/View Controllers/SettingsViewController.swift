//
//  SettingsViewController.swift
//  Planets
//
//  Created by Harm on 4/13/23.
//  Copyright © 2023 Lambda Inc. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var plutoSwitch: UISwitch!
    
    // MARK: - View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        updateViews()
    }
    
    // MARK: - Action Handlers
    
    
    @IBAction func changeShouldShowPluto(_ sender: UISwitch) {
        
        let userDefaults = UserDefaults.standard
        
        userDefaults.set(sender.isOn, forKey: "ShouldShowPluto")
        
    }
    
    // MARK: - Private
    
    private func updateViews() {
        let userDefaults = UserDefaults.standard
        plutoSwitch.isOn = userDefaults.bool(forKey: "ShouldShowPluto")
    }
    
}
