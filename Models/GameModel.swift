//
//  GameModel.swift
//  QuestionsGame
//
//  Created by Abdulrahman Abu Sa'a on 9/27/22.
//


import Foundation
 
struct Game {
    
    private let questions = Question.Questions.shuffled()
    private(set) var guesses = [Question:Int]()
    private(set) var currentQuestion = 0
    private(set) var isOver = false
    
    mutating func makeGuessForCurrentQuestion(atIndex index: Int) {
        guesses[questions[currentQuestion]] = index
    }
        
    mutating func updateGameStatus() {
            if currentQuestion < questions.count - 1 {
                currentQuestion += 1
            } else {
                isOver = true
            }
        }
    
    var totalQuestion: Int {
        return questions.count
    }
    
    var CurrentQuestion: Question {
        return questions[currentQuestion]
    }
    
    var guessCount: (correct: Int, incorrect: Int) {
          var count: (correct: Int, incorrect: Int) = (0, 0)
          for (question, guessedIndex) in guesses {
              if question.indexOfRightAnswer == guessedIndex {
                  count.correct += 1
              } else {
                  count.incorrect += 1
              }
          }
          return count
      }
    
}

