//
//  QuestionsViewController.swift
//  PersonalityQuiz
//
//  Created by Devere Weaver on 12/21/23.
//

import UIKit

class QuestionsViewController: UIViewController {
    
    // displays the questions as the questions array is traversed
    @IBOutlet var questionLabel: UILabel!
    
    // single stack interface outlets
    @IBOutlet var singleStackView: UIStackView!
    @IBOutlet var singleStackButton1: UIButton!
    @IBOutlet var singleStackButton2: UIButton!
    @IBOutlet var singleStackButton3: UIButton!
    @IBOutlet var singleStackButton4: UIButton!
    
    // slider stack interface outlets (missing slider and submit button)
    @IBOutlet var sliderStackView: UIStackView!
    @IBOutlet var slider: UISlider!
    @IBOutlet var sliderStackLabel1: UILabel!
    @IBOutlet var sliderStackLabel2: UILabel!
    
    // multiple stack interface outlets (missing submit button and sliders?)
    @IBOutlet var multipleStackView: UIStackView!
    @IBOutlet var multiLabel1: UILabel!
    @IBOutlet var multiSwitch1: UISwitch!
    @IBOutlet var multiLabel2: UILabel!
    @IBOutlet var multiSwitch2: UISwitch!
    @IBOutlet var multiLabel3: UILabel!
    @IBOutlet var multiSwitch3: UISwitch!
    @IBOutlet var multiLabel4: UILabel!
    @IBOutlet var multiSwitch4: UISwitch!
    
    /* this method returns an optional ResultsViewController */
    @IBSegueAction func showResults(_ coder: NSCoder) -> ResultsViewController? {
        /* we must initialize a ResultsViewController in this method and then return it,
         * to do so, return it with the custom initializer defined in its view controller
         * file 
         */
        return ResultsViewController(coder: coder, responses: answersChosen)
    }
    @IBOutlet var questionProgressView: UIProgressView!
    
    /* VARIBLES */
    var questionIndex = 0    // keep track of the number of questions asked
    var answersChosen: [Answer] = []
    var questions: [Question] = [             // array of Questions which will be displayed to the user
        Question(
            text: "Which food do you like the most?",
            type: .single,
            answers: [
                Answer(text: "Steak", type: .dog),
                Answer(text: "Fish", type: .cat),
                Answer(text: "Carrots", type: .rabbit),
                Answer(text: "Corn", type: .turtle)
                ]),
        
        Question(
            text: "Which activitites do you enjoy?",
            type: .multiple,
            answers: [
                Answer(text: "Swimming", type: .turtle),
                Answer(text: "Sleeping", type: .cat),
                Answer(text: "Cuddling", type: .rabbit),
                Answer(text: "Eating", type: .dog)
            ]),
        
        Question(
            text: "How much do you enjoy car rides?",
            type: .ranged,
            answers: [
                Answer(text: "I dislike them", type: .cat),
                Answer(text: "I get a little nervous", type: .rabbit),
                Answer(text: "I barely notice them", type: .turtle),
                Answer(text: "I love them", type: .dog)
            ])
        ]   // end questions
    
    
    // CURRENT GOAL: record the user response in the single stack view based on the
    // type of button they pressed, then once the user response has been recorded
    // we can move to the next question and display it
    
    /* METHODS */
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()          // set the proper interface for the first question
    }
    
    func updateUI() {
        /* update the interface for each question before it is displayed to the user;
         * will update the navigation bar and visibility of the stack views
         */
        
        /* hide all stack views initially and then inspect the type of the current
         * Question in the questions array to determine which stack view to present
         * to the user
         */
        singleStackView.isHidden = true
        sliderStackView.isHidden = true
        multipleStackView.isHidden = true
        
        navigationItem.title = "Question #\(questionIndex + 1)"
        
        // keep track of the current Question struct and the corresponding Answer struct inside of it
        let currentQuestion = questions[questionIndex]
        let currentAnswers = currentQuestion.answers

        switch currentQuestion.type {
        case .single:
            updateSingleStack(using: currentAnswers)
        case .multiple: 
            updateMultipleStack(using: currentAnswers)
        case .ranged:
            updateSliderStackView(using: currentAnswers)
        }
        
        // update question label and progress view
        questionLabel.text = currentQuestion.text
        let progress = Float(questionIndex) / Float(questions.count)
        questionProgressView.setProgress(progress, animated: true)
    }  // end updateUI()
    
    func updateSingleStack(using answers: [Answer]) {
        /* updateSingleStack() - update the single answer interface stack buttons
         *
         * Args:
         *      1. answers: [Answers] - an array of Answer struct instances
         */
        singleStackView.isHidden = false
        singleStackButton1.setTitle(answers[0].text, for: .normal)
        singleStackButton2.setTitle(answers[1].text, for: .normal)
        singleStackButton3.setTitle(answers[2].text, for: .normal)
        singleStackButton4.setTitle(answers[3].text, for: .normal)
    }
    
    func updateMultipleStack(using answers: [Answer]) {
        /* updateMultipleStack() - update the multiple answer interface stack buttons
        *
        * Args:
        *      1. answers: [Answers] - an array of Answer struct instances
        */
        
        multipleStackView.isHidden = false
        
        // update controls to default positions each display
        multiSwitch1.isOn = false
        multiSwitch2.isOn = false
        multiSwitch3.isOn = false
        multiSwitch4.isOn = false

        // display text
        multiLabel1.text = answers[0].text
        multiLabel2.text = answers[1].text
        multiLabel3.text = answers[2].text
        multiLabel4.text = answers[3].text
    }
    
    func updateSliderStackView(using answers: [Answer]) {
        /* updateSliderStack() - update the slider answer interface stack buttons
        *
        * Args:
        *      1. answers: [Answers] - an array of Answer struct instances
        *
        * Note: This function uses the .first and .last methods of the array class since
        * the number of answers isn't guaranteed. This will prevent out of bounds errors.
        */
        sliderStackView.isHidden = false
        slider.setValue(0.5, animated: true)
        sliderStackLabel1.text = answers.first?.text
        sliderStackLabel2.text = answers.last?.text
    }
    
    @IBAction func singleAnswerButtonPressed(_ sender: UIButton) {
        /* singleAnswerButtonPressed() - action taken when the user pressed an
         * answer button the single repsonse question view; it will record the
         * user response in the answerChosen array
         *
         * Args: N/A
         */
        
        // get all the answers for the current question into this array
        let currentAnswers = questions[questionIndex].answers

        // specify which button triggered the method and append its
        // answer to the answerChosen array
        switch sender {
        case singleStackButton1:
            answersChosen.append(currentAnswers[0])
        case singleStackButton2:
            answersChosen.append(currentAnswers[1])
        case singleStackButton3:
            answersChosen.append(currentAnswers[2])
        case singleStackButton4:
            answersChosen.append(currentAnswers[3])
        default:
            break
        }
        
        print("After single answer question: \(answersChosen)")
        nextQuestion()
        
    }
    
    
    @IBAction func multipleAnswerButtonPressed() {
        /* multipleAnswerButtonPressed() - action taken when the submit answers button
         * is pressed on the multiple response question view; the labels are added to
         * the answers response if their corresponding switch is toggled on
         *
         * Args: N/A
         */
        
        // check the state of all four switches
        // if the state is "On" then add the corresponding Answer to the chosenAnswers array
        // if the state is "Off", do nothing
        
        // store array of answers for current Question in local scope
        let currentAnswers = questions[questionIndex].answers
        
        if multiSwitch1.isOn {
            answersChosen.append(currentAnswers[0])
        }
        if multiSwitch2.isOn {
            answersChosen.append(currentAnswers[1])
        }
        if multiSwitch3.isOn {
            answersChosen.append(currentAnswers[2])
        }
        if multiSwitch4.isOn {
            answersChosen.append(currentAnswers[3])
        }
        
        print("After multiple answers button: \(answersChosen)")
        nextQuestion()
    }
    
    @IBAction func sliderAnswerButtonPressed() {
        /* read the current position of the slider and use this reading to
         * determine which answer to add to the collection
         */
        let currentAnswers = questions[questionIndex].answers
        print(slider.value)

        if slider.value < 0.24 {
            answersChosen.append(currentAnswers[0])
        } else if slider.value > 0.24 && slider.value < 0.49 {
            answersChosen.append(currentAnswers[1])
        } else if slider.value > 0.49 && slider.value < 0.74 {
            answersChosen.append(currentAnswers[2])
        } else if slider.value > 0.74 {
            answersChosen.append(currentAnswers[3])
        }
        
        print("After slider question: \(answersChosen)")
        nextQuestion()
    }
    
    
    func nextQuestion() {
        /* increment the next question counter */
        questionIndex += 1
        
        if questionIndex < questions.count {
            updateUI()    // display any remaining questions
        } else {    // move to the results view
            performSegue(withIdentifier: "Results", sender: nil)
        }
    }
    
}
