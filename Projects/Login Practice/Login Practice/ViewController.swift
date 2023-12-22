//
//  ViewController.swift
//  Login Practice
//
//  Created by Devere Weaver on 12/20/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var forgotUsernameButton: UIButton!
    @IBOutlet var forgotPasswordButton: UIButton!
    @IBOutlet var usernameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        /* Set login page navtigation title */
        
        // unwrap the Any? optional and make sure it's a UIButton
        guard let sender = sender as? UIButton else {return}
        
        if sender == forgotUsernameButton {
            segue.destination.navigationItem.title = "Forgot Username"
        } else if sender == forgotPasswordButton {
            segue.destination.navigationItem.title = "Forgot Password"
        } else {
            segue.destination.navigationItem.title = usernameTextField.text
        }
    }
    
    @IBAction func forgotUsername(_ sender: Any) {
        /* Execute segue to the forgot username landing page */
        performSegue(withIdentifier: "Forgot", sender: forgotUsernameButton)
    }
    
    @IBAction func forgotPassword(_ sender: Any) {
        /* Execute segue to the forgot password landing page */
        performSegue(withIdentifier: "Forgot", sender: forgotPasswordButton)
    }
    

}

