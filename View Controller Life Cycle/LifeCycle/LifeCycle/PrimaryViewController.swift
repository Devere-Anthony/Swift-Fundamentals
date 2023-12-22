//
//  ViewController.swift
//  LifeCycle
//
//  Created by Devere Weaver on 12/21/23.
//

import UIKit

class PrimaryViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("PrimaryViewController - View Did Load")     // log anytime viewDidLoad() is invoked, should be immediately after the view is loaded
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("PrimaryViewController - View Did Appear")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("PrimaryViewController - View Will Appear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("PrimaryViewController - View Will Disappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("PrimaryViewController - View Did Disappear")
    }
    


}

