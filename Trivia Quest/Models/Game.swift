//
//  Game.swift
//  Trivia Quest
//
//  Created by Matthew Thompson on 21/06/2022.
//

//*************************************************
//*       Game Model File ~ Setup game logic      *
//*************************************************

import Foundation

struct Game {
    // What question is the user on?
    private(set) var currentQuestionIndex = 0
    // Dictionary to hold a question and the corresponding answer chosen.
    private(set) var guesses = [Question: Int]()
    // Is the game over?
    private(set) var isOver = false
    // Gather all questions and shuffle them.
    private let questions = Question.allQuestions.shuffled()
    
    // Determine how many correct or incorrect answers the user has given.
    var guessCount: (correct: Int, incorrect: Int) {
        var count: (correct: Int, incorrect: Int) = (0, 0)
        for (question, guessedIndex) in guesses {
            if question.correctAnswerIndex == guessedIndex {
                count.correct += 1
            } else {
                count.incorrect += 1
            }
        }
        return count
    }
    
    // How many questions are there?
    var numberOfQuestions: Int {
        questions.count
    }
    
    // What question are we on?
    var currentQuestion: Question {
        questions[currentQuestionIndex]
    }
    
    // Make a guess for the current question.
    mutating func makeGuessForCurrentQuestion(atIndex index: Int) {
        guesses[currentQuestion] = index
    }
    
    // Do we have any more questions to answer? Is the game over?
    mutating func updateGameStatus() {
        if currentQuestionIndex < questions.count - 1 {
            currentQuestionIndex += 1
        } else {
            isOver = true
        }
    }
}
