//
//  ScoreViewModel.swift
//  Trivia Quest
//
//  Created by Matthew Thompson on 29/06/2022.
//

import Foundation

struct ScoreViewModel {
    let correctGuesses: Int
    let incorrectGuesses: Int
    
    var percentage: Int {
        ((correctGuesses * 100) / (correctGuesses + incorrectGuesses))
    }
}
