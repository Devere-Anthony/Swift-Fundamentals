//
//  SecondViewController.swift
//  OrderOfEvents
//
//  Created by Devere Weaver on 12/21/23.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet var secondViewLabel: UILabel!
    var eventNumber: Int = 1    // counts each lifecycle event
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addEvent(from: "viewDidLoad")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        addEvent(from: "viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        addEvent(from: "viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        addEvent(from: "viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        addEvent(from: "viewDidDisappear")
    }
    
    func addEvent(from: String) {
        /* change the label text and update the number of events count */
        
        // the label has to be unwrapped since it's an optional
        if let existingText = secondViewLabel.text {
            secondViewLabel.text = "\(existingText)\nEvent number\(eventNumber) was \(from)"
            eventNumber += 1
        }
    }
    

}
