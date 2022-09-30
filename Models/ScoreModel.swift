//
//  ScoreViewModel.swift
//  QuestionsGame
//
//  Created by Abdulrahman Abu Sa'a on 9/28/22.
//

import Foundation

struct ScoreViewModel {
    
    let correctGuesses: Int
    let incorrectGuesses: Int
    
    var percentage: Int {
        (correctGuesses * 100 / (correctGuesses + incorrectGuesses))
    }
}

