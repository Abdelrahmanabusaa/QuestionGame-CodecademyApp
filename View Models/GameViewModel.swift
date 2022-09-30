//
//  GameViewModel.swift
//  QuestionsGame
//
//  Created by Abdulrahman Abu Sa'a on 9/27/22.
//

import SwiftUI

class GameViewModel: ObservableObject {
    
    @Published private var game = Game()
    
    var currentQuestion: Question {
        game.CurrentQuestion
    }
    
    var questionProgressText: String {
        "\(game.currentQuestion + 1) / \(game.totalQuestion)"
    }
    
    var guessWasMade: Bool {
        if let _ = game.guesses[currentQuestion] {
            return true
        }
        else {
            return false
        }
    }
    
    var gameIsOver: Bool{
        game.isOver
    }
    
    var correctGuesses: Int {
        game.guessCount.correct
    }
    
    var incorrectGuesses: Int {
        game.guessCount.incorrect
    }
    
    func makeGuess(atIndex index: Int) {
        game.makeGuessForCurrentQuestion(atIndex: index)
    }
    
    func displayNextScreen() {
        game.updateGameStatus()
            }
    
    func color(forOptionIndex optionIndex: Int) -> Color {
            if let guessedIndex = game.guesses[currentQuestion] {
                if guessedIndex != optionIndex {
                    return GameColor.main
                } else if guessedIndex == game.CurrentQuestion.indexOfRightAnswer {
                    return GameColor.correctGuess
                } else {
                    return GameColor.incorrectGuess
                }
            } else {
                return GameColor.main
            }
    }
}
