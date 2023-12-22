//
//  ViewController.swift
//  Apple Pie
//
//  Created by Devere Weaver on 12/17/23.
//

import UIKit

class ViewController: UIViewController {
    
    /* VARS */
    var listOfWords = ["devere", "anthony", "weaver", "stella", "computer science",
    "mathematics", "pizza", "wings", "beer"]
    let incorrectMovesAllowed = 7     // must be in [1,7] where 1 is hardest
    var totalWins = 0 {
        didSet {
            newRound()
        }
    }
    var totalLosses = 0 {
        didSet {
            newRound()
        }
    }
    
    
    /* OUTLETS */
    @IBOutlet var correctWordLabel: UILabel!
    @IBOutlet var scoreLabel: UILabel!
    @IBOutlet var treeImageView: UIImageView!
    @IBOutlet var letterButtons: [UIButton]!
    
    /* METHODS */
    override func viewDidLoad() {    // recall, this is where the program loads its initial state
        super.viewDidLoad()
        newRound()    // load a new round on start up
        
    }
    
    var currentGame: Game!    // use to store current state of round
    func newRound() {
        if !listOfWords.isEmpty {
            let newWord = listOfWords.removeFirst()
            currentGame = Game(word: newWord, incorrectMovesRemaining: incorrectMovesAllowed, guessedLetters: [])
            updateUI()
        } else {
            enableLetterButtons(false)
        }
    }
    
    func enableLetterButtons(_ enable: Bool) {
        for button in letterButtons {
            button.isEnabled = enable
            
            
            
            
            
        }
    }
    
    func updateUI() {
        /* Updated the primary UI of the application by changes the wins and losses as well as
         * updating the image of the apple tree for each incorrect guess
         */
        
        var letters = [String]()
        for letter in currentGame.formattedWord {
            letters.append(String(letter))
        }
        let wordWithSpacing = letters.joined(separator: " ")
        correctWordLabel.text = wordWithSpacing
        correctWordLabel.text = currentGame.formattedWord
        scoreLabel.text = "Wins: \(totalWins), Losses: \(totalLosses)"
        treeImageView.image = UIImage(named: "Tree \(currentGame.incorrectMovesRemaining)")
    }
    
    
    /* ACTIONS */
    @IBAction func letterButtonPressed(_ sender: UIButton) {
        sender.isEnabled = false
        let letterString = sender.configuration!.title!    // get the button's title
        let letter = Character(letterString.lowercased())  // then convert it to lowercase 
        currentGame.playerGuessed(letter: letter)    // add letter to game state
        updateGameState()
    }
    
    func updateGameState() {
        if currentGame.incorrectMovesRemaining == 0 {
            totalLosses += 1
        } else if currentGame.word == currentGame.formattedWord {
            totalWins += 1
        } else {
            updateUI()
        }
    }

}
