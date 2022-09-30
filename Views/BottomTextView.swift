//
//  ButtomTextView.swift
//  QuestionsGame
//
//  Created by Abdulrahman Abu Sa'a on 9/27/22.
//

import SwiftUI

struct BottomTextView: View {
    let str: String
 
    var body: some View {
        HStack {
            Spacer()
            Text(str)
                .font(.body)
                .bold()
                .padding()
            Spacer()
        }.background(GameColor.accent)
    }
}

struct BottomTextView_Previews: PreviewProvider {
    static var previews: some View {
        BottomTextView(str: "Test")
    }
}
