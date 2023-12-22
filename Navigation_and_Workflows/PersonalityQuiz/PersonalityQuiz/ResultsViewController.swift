//
//  ResultsViewController.swift
//  PersonalityQuiz
//
//  Created by Devere Weaver on 12/21/23.
//

import UIKit

class ResultsViewController: UIViewController {
    
    
    @IBOutlet var resultAnswerLabel: UILabel!
    @IBOutlet var resultDefinitionLabel: UILabel!
    var responses: [Answer]   // store the user responses from the Question view
                              // must be assigned an initial value here or in a
                              // custom initializer

    init?(coder: NSCoder, responses: [Answer]) {
        /* coder is used by UIKit to initialize the view controller from the Storyboard */
        self.responses = responses
        super.init(coder: coder)
        navigationItem.hidesBackButton = true
    }
    
    /* when you create a custom initializer you must also implement any required  initializers
     * that the superclass defines, fortunately Xcode provides a "Fix" button to do so
     */
    
   required init?(coder: NSCoder) {
       /* crash if the default initializer is called */
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        calculatePersonalityResult()

    }
    
    func calculatePersonalityResult() {
        // combine the items in an array by iterating over them
        // and peforming the code inside the brackets
        let frequencyOfAnswers = responses.reduce(into: [:]) {
            (counts, answer) in
            counts[answer.type, default: 0] += 1
        }
        
        let frequentAnswersSorted = frequencyOfAnswers.sorted(by: {(pair1, pair2) in
            return pair1.value > pair2.value
        })
        
        let mostCommonAnswer = frequencyOfAnswers.first!.key
        
        resultAnswerLabel.text = "You are a \(mostCommonAnswer.rawValue)!"
        resultDefinitionLabel.text = mostCommonAnswer.definition
    }
    
}
