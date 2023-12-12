//
//  ViewController.swift
//  InterfaceBuilderBasics
//
//  Created by Devere Weaver on 12/11/23.
//

import UIKit

class ViewController: UIViewController {
    
    /* outlets */
    @IBOutlet var mainLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func changeTitle(_ sender: Any) {
        mainLabel.text = "This app sucks! 🥴"
        mainLabel.textAlignment = NSTextAlignment.center
    }
}
