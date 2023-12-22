/* Game.swift - Defines a structure called Game that stores the state of
 * the Apple Pie game. It will store the word to be guessed and the number
 * of turns left to properly guess the word.
 *
 * Author: Devere Anthony Weaver
 *
 */

import Foundation

struct Game {
    var word: String
    var incorrectMovesRemaining: Int
    var guessedLetters: [Character]    // why do we need to keep track of this?
    var formattedWord: String {
        /* computed variable to build a string of the correctly guessed letters */
        var guessedWord = ""
        for letter in word {
            if guessedLetters.contains(letter) {
                guessedWord += "\(letter)"
            } else {
                guessedWord += "_"
            }
        }
        return guessedWord
    }
    
    mutating func playerGuessed(letter: Character) {
        // add the guessed letter to the collection
        guessedLetters.append(letter)
        
        // penalize a bad guess
        if !word.contains(letter) {
            incorrectMovesRemaining -= 1
        }
    }
}
