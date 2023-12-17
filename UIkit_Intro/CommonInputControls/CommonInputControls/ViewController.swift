//
//  ViewController.swift
//  CommonInputControls
//
//  Created by Devere Weaver on 12/16/23.
//

import UIKit

class ViewController: UIViewController {

    /* OUTLETS */
    @IBOutlet var mySlider: UISlider!
    @IBOutlet var mySwitch: UISwitch!
    @IBOutlet var myButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // print the current state of the switch on app startup
        switchFlicked(mySwitch)
        
        // connect the myButton to an action and an event
        // the first argument is the owner of the function
        // the second selects which function to use
        // the third is the event that triggers the action
        myButton.addTarget(self, action: #selector(buttonTapped(_:)),
                         for: .touchUpInside)
    }

    /* ACTIONS */
    @IBAction func switchFlicked(_ sender: UISwitch) {
        /* Print out the current state of the slider */
        mySwitch.isOn ? print("Switch on") : print("Switch off")
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        /* When the button is pressed, it retrieves the current state of
         * the switch object and the slider
         */
        print("Button was tapped!")
        
        mySwitch.isOn ? print("The switch is on") : print("The switch is off")
        
        print("The slider is set to \(mySlider.value)")
    }
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        /* Print out the current value of the slider each time
         * it is changed
         */
        print(sender.value)
    }
    
    @IBAction func keyboardReturnKeyTapped(_ sender: UITextField) {
        /* Print the current text */
        if let text = sender.text {
            print(text)
        }
    }
    
    
    @IBAction func textChanged(_ sender: UITextField) {
        /* Print out the text whenever the user updates the text */
        if let text = sender.text {
            print(text)
        }
        
    }
    
    @IBAction func respondToTapGesture(_ sender: UITapGestureRecognizer) {
        /* Determine where the user tapped when the recognizer's action
         * was called and print out the (x,y) coordinates;
         *
         * Something of interest, the gesture will not activate when other
         * controls are interacted with since the gesture is only tied to
         * the view controller's view
         */
        let location = sender.location(in: view)  // where the user tapped
        print(location)
    }
    
    
}

