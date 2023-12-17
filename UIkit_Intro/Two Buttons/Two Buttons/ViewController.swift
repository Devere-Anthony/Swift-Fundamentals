//
//  ViewController.swift
//  Two Buttons
//
//  Created by Devere Weaver on 12/16/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var textField: UITextField!
    @IBOutlet var displayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func setTextButtonTapped(_ sender: Any) {
        /* Set the label text to the current textfield */
        displayLabel.text = textField.text
    }
    
    @IBAction func clearTextButtonTapped(_ sender: Any) {
        /* Remove the text from both the textfield and label */
        textField.text?.removeAll()
        displayLabel.text?.removeAll()
    }
}

