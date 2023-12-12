//
//  ViewController.swift
//  Light
//
//  Created by Devere Weaver on 12/11/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var myButton: UIButton!
    
    /* outlets */
    
    /* vars */
    var lightOn = true
    
    /* methods */
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    fileprivate func updateUI() {
        if lightOn {
            view.backgroundColor = .white
        } else {
            view.backgroundColor = .black
        }
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        lightOn.toggle()
        updateUI()
    }
    
}

