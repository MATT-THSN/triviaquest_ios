//
//  Question.swift
//  Trivia Quest
//
//  Created by Matthew Thompson on 21/06/2022.
//

//*************************************************************
//*       Question Model File ~ Setup questions for game      *
//*************************************************************

import Foundation

struct Question: Hashable {
    // Attributes of each question
    let questionText: String
    let possibleAnswers: [String]
    let correctAnswerIndex: Int
    
    // Store an array of questions
    static var allQuestions = [
            Question(questionText: "Which mammal is known to have the most powerful bite in the world?",
                     possibleAnswers: [
                        "Lion",
                        "Hippopotamus",
                        "Eagle",
                        "Rhino"
                     ],
                     correctAnswerIndex: 1),
            Question(questionText: "What object does a male penguin often gift to a female penguin to win her over?",
                     possibleAnswers: [
                        "A pebble",
                        "A jumper",
                        "A sausage roll",
                        "A house"
                     ],
                     correctAnswerIndex: 0),
            Question(questionText: "How many months pregnant is an elephant before it gives birth?",
                     possibleAnswers: [
                        "15",
                        "9",
                        "28",
                        "22"
                     ],
                     correctAnswerIndex: 3),
            Question(questionText: "A dog sweats through which part of its body?",
                     possibleAnswers: [
                        "Its paws",
                        "Its tongue",
                        "Its back",
                        "Its arm pits"
                     ],
                     correctAnswerIndex: 0),
            Question(questionText: "What is the size of a newborn kangaroo?",
                     possibleAnswers: [
                        "1 inch",
                        "2 inches",
                        "half an inch",
                        "3 inches"
                     ],
                     correctAnswerIndex: 0),
            Question(questionText: "How far away can a wolf smell its prey?",
                     possibleAnswers: [
                        "6 miles",
                        "10 miles",
                        "2 miles",
                        "1 mile"
                     ],
                     correctAnswerIndex: 2),
            Question(questionText: "Which animal is known to spend 90% of its day, sleeping?",
                     possibleAnswers: [
                        "Snail",
                        "Tiger",
                        "Lion",
                        "Koala"
                     ],
                     correctAnswerIndex: 3),
            Question(questionText: "What color is the tongue of a giraffe?",
                     possibleAnswers: [
                        "Blue",
                        "Pink",
                        "Dark purple",
                        "Black"
                     ],
                     correctAnswerIndex: 3),
            Question(questionText: "Which animal’s poop is known to take the shape of cubes?",
                     possibleAnswers: [
                        "Wombat",
                        "Zebra",
                        "Possum",
                        "Aligator"
                     ],
                     correctAnswerIndex: 0),
            Question(questionText: "A baby goat is called what?",
                     possibleAnswers: [
                        "Chap",
                        "Kid",
                        "Fella",
                        "Little goaty"
                     ],
                     correctAnswerIndex: 1),
            Question(questionText: "How many humps does a Bactrian camel have?",
                     possibleAnswers: [
                        "1",
                        "3",
                        "4",
                        "2"
                     ],
                     correctAnswerIndex: 3),
            Question(questionText: "How far can a skunk spray?",
                     possibleAnswers: [
                        "3 metres",
                        "2 metres",
                        "4 metres",
                        "2.5 metres"
                     ],
                     correctAnswerIndex: 0),
            Question(questionText: "Which animal breathes out of its bottom?",
                     possibleAnswers: [
                        "Dolphin",
                        "Turtle",
                        "Wombat",
                        "Bearded Dragon"
                     ],
                     correctAnswerIndex: 1),
            Question(questionText: "Which animal can stand on its tail?",
                     possibleAnswers: [
                        "Kangaroo",
                        "Cat",
                        "Monkey",
                        "Leopard"
                     ],
                     correctAnswerIndex: 0),
            Question(questionText: "Why do frogs croak?",
                     possibleAnswers: [
                        "To breathe",
                        "To attract a mate",
                        "To sing",
                        "To talk"
                     ],
                     correctAnswerIndex: 1)
        ]
    
}

