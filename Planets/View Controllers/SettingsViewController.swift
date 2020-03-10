//
//  SettingsViewController.swift
//  Planets
//
//  Created by krikaz on 3/10/20.
//  Copyright © 2020 Lambda Inc. All rights reserved.
//

import UIKit

extension String {
    static var shouldShowPlutoKey = "ShouldShowPluto"
}

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var shouldPlutoSwitch: UISwitch!
    
    @IBAction func changeShouldShowPluto(_ sender: UISwitch) {
        let shouldShowPluto = shouldPlutoSwitch.isOn
        UserDefaults.standard.set(shouldShowPluto, forKey: .shouldShowPlutoKey)
    }
    
    @IBAction func done(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    func updateViews() {
        let shouldShowPluto = UserDefaults.standard.bool(forKey: .shouldShowPlutoKey)
        shouldPlutoSwitch.isOn = shouldShowPluto
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
