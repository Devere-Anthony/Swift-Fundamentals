//
//  ViewController.swift
//  Login
//
//  Created by Devere Weaver on 12/19/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var usernameField: UITextField!
    @IBOutlet var forgotUsernameButton: UIButton!
    @IBOutlet var forgotPasswordButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        /* send data from app login view to landing page view */
        
        // must case the sender as a UIButton since currently the
        // sender is an Any? optional, we need it to be a specific
        // type to know what operations we can perform with it
        guard let sender = sender as? UIButton else {return}
        
        if sender == forgotPasswordButton {
            segue.destination.navigationItem.title = "Forgot Password"
        } else if sender == forgotUsernameButton {
            segue.destination.navigationItem.title = "Forgot Username"
        } else {
            segue.destination.navigationItem.title = usernameField.text
        }
    }

    @IBAction func forgotUsername(_ sender: Any) {
        performSegue(withIdentifier: "ForgotUsernameOrPassword", sender: forgotUsernameButton)
    }
    
    @IBAction func forgotPassword(_ sender: Any) {
        performSegue(withIdentifier: "ForgotUsernameOrPassword", sender: forgotPasswordButton)
    }
    
}

