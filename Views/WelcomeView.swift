//
//  WelcomeView.swift
//  QuestionsGame
//
//  Created by Abdulrahman Abu Sa'a on 9/27/22.
//

import SwiftUI

struct WelcomeView: View {
    
    
    var body: some View {
        
        NavigationView {
        
        ZStack {
            GameColor.main.ignoresSafeArea()
        VStack{
            
               Spacer()
            
            VStack(alignment: .leading, spacing: 0) {
            Text("Select the correct answer to the following questions..")
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.center)
                    .padding()
            }
            
               Spacer()
            
            NavigationLink(destination: GameView(), label: {
                BottomTextView(str: "Okay, Let's go!")
            })
                }
            
            }
        .foregroundColor(.white)
        }
        
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
