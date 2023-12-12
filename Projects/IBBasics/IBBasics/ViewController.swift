//
//  ViewController.swift
//  IBBasics
//
//  Created by Devere Weaver on 12/11/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redButton: UIButton!
    @IBOutlet var blueButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        redButton.tintColor = .red
    }

    @IBAction func blueButtonPressed(_ sender: Any) {
        /* actions taken when the blue button is pressed */
        print("Blue button pressed.")
    }
    @IBAction func redButtonPressed(_ sender: Any) {
        /* actions taken when the red button is pressed */
        print("Red button pressed.")
    }
    
}

