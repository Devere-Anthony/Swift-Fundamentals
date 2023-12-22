/*
 * Project: TrafficSegues
 *
 * File: ViewController.swift
 *
 * View Controller for red screen
 *
 * Note that for this project there is only ONE View Controller object, the other view controllers
 * are not actual intances of the View Controller class, they are instances of the UIViewController class.
 * Thus, everything in here is a member or method of the red screen's view controller.
 */
 
import UIKit

class ViewController: UIViewController {

    @IBOutlet var redTextField: UITextField!    // text field in red screen will update yellow screen's title
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func unwindToRed(unwindSeque: UIStoryboardSegue) {
        /* Perform an unwind seque from the yellow screen to the red screen.
         * Observe these can be named whatever, but it MUST only take one
         * parameter, UIStoreboardSegue.
         * This type of function states that this current view controller is a
         * valid destination for an unwind seque. Also observe, it doesn't need
         * to contain any code for it to function, but it can be used to pass info
         * from the end point of one segue back o the source view controller 
         */
    }
    

    /* Just before a segue from the red screen is performed, this method is called and
     * the code inside of it will be executed. The segue parameter refers to the segue itself
     * and it has attributes that refer to the view controller of the next scene. The sender
     * refers to this view controller...maybe.
     */
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        /* set the desination's navigation item title */
        segue.destination.navigationItem.title = redTextField.text
    }

}

