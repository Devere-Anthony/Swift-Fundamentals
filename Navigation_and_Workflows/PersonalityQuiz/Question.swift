//
//  Question.swift
//  PersonalityQuiz
//
//  Created by Devere Weaver on 12/21/23.
//
//  Defines all the structures necessary for the personality quiz
//

import Foundation

struct Question {
    var text: String            // question string
    var type: ResponseType      // the type of question (single response, multiple response, ranged response)
    var answers: [Answer]        // stores the answer to the question posed
}

enum ResponseType {             // enumerate the different types of possible questions
    case single, multiple, ranged
}

struct Answer {                 // store the possible answers and their matching animal types
    var text: String            
    var type: AnimalType
}

enum AnimalType: Character {
    case dog = "🐶", cat = "🐱", rabbit = "🐰", turtle = "🐢"
    
    var definition: String {     // property that will be displayed on the screen based on the user responses
        switch self {
        case.dog:
            return "You are incredibly outgoing. You surround yourself with the people you love and enjoy activities with your friends."
        case.cat:
            return "Mischievous, yet mild-tempered, you enjoy doing things on your own terms."
        case.rabbit:
            return "You love everything that's soft. You are healthy and full of energy."
        case.turtle:
            return "You are wise beyond your years, and you focus on the details. Slow and steady wins the race."
            
        }
    }
}
