//
//  ViewController.swift
//  Light
//
//  Created by Devere Weaver on 12/15/23.
//

import UIKit

class ViewController: UIViewController {
    
    /* vars */
    var lightOn = true
    
    /* methods */
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()   // make sure button title is correctly set
    }

    func updateUI() {
        /* change the background color when the button is pressed */
        view.backgroundColor = lightOn ? .white : .black
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        /* action taken when button in top left is pressed */
        lightOn.toggle()
        updateUI()
    }
    
}
