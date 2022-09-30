//
//  QuestionsView.swift
//  QuestionsGame
//
//  Created by Abdulrahman Abu Sa'a on 9/27/22.
//

import SwiftUI

struct QuestionsView: View {
    
    @EnvironmentObject var viewModel: GameViewModel
    
    let question: Question
    
    var body: some View {
        
        VStack {
            
            Text(question.questionText)
        .bold()
        .font(.largeTitle)
        .multilineTextAlignment(.leading)
                    
        Spacer()
                    
        HStack {
       
            ForEach(0..<question.possibleAnswers.count) { answerIndex in
                
                Button.init(action: {
                    viewModel.makeGuess(atIndex: answerIndex)
                    
                }, label: {
            ChoiceTextView(choiceText: question.possibleAnswers[answerIndex])
            .background(viewModel.color(forOptionIndex: answerIndex))
                })
                .disabled(viewModel.guessWasMade)
                
            }
            
        }
            
            
            if viewModel.guessWasMade {
                Button.init(action: {
                    viewModel.displayNextScreen()
                }, label: {
                    BottomTextView(str: "Next")
                })
            }
        }
            
        .foregroundColor(.white)
        
    }
}

struct QuestionsView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionsView(question: Game().CurrentQuestion)
    }
}
