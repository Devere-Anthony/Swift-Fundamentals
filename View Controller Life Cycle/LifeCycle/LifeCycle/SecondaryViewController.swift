//
//  SecondaryViewController.swift
//  LifeCycle
//
//  Created by Devere Weaver on 12/21/23.
//

import UIKit

class SecondaryViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("SecondaryViewController - View Did Load")     // log anytime viewDidLoad() is invoked, should be immediately after the view is loaded
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("SecondaryViewController - View Did Appear")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("SecondaryViewController - View Will Appear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("SecondaryViewController - View Will Disappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("SeondaryViewController - View Did Disappear")
    }
}
