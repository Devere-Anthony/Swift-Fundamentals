//
//  ViewController.swift
//  Programmatic Segues
//
//  Created by Devere Weaver on 12/19/23.
//

import UIKit

class ViewController: UIViewController {

    /* Outlets and members */
    @IBOutlet var segueSwitch: UISwitch!
    
    /* Actions and methods */
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func yellowButtonTapped(_ sender: Any) {
        /* perform segue to Yellow scene if the switch is on */
        if segueSwitch.isOn {
            performSegue(withIdentifier: "Yellow", sender: nil)
        }
    }
    
    @IBAction func greenButtonTapped(_ sender: Any) {
        /* perform segue to Green scene if the switch is on */
        if segueSwitch.isOn{
            performSegue(withIdentifier: "Green", sender: nil)
        }
    }
}

