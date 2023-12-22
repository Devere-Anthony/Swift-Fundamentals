//
//  ViewController.swift
//  Programmatic Seques Practice
//
//  Created by Devere Weaver on 12/19/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var segueSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func indigoButtonPressed(_ sender: Any) {
        if segueSwitch.isOn {
            performSegue(withIdentifier: "Indigo", sender: nil)
        }
    }
    
    @IBAction func tealSegue(_ sender: Any) {
        if segueSwitch.isOn {
            performSegue(withIdentifier: "Teal", sender: nil)
        }
    }
    

}

