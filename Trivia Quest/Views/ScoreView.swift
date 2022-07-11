//
//  ScoreView.swift
//  Trivia Quest
//
//  Created by Matthew Thompson on 29/06/2022.
//

//****************************************************************************
//*       ScoreView File ~ Determine how the final score page will look      *
//****************************************************************************

import SwiftUI

struct ScoreView: View {
    let viewModel: ScoreViewModel
    
    var body: some View {
        ZStack {
            // Set background colour
            GameColor.main.ignoresSafeArea()
            VStack {
                Spacer()
                Text("Final Score:")
                    .font(.body)
                    .padding()
                // Determine score percentage and display.
                Text("\(viewModel.percentage)%")
                    .font(.system(size: 50))
                    .bold()
                    .padding()
                Spacer()
                VStack {
                    // Determine number of correct and incorrect guesses.
                    Text("\(viewModel.correctGuesses) ✅")
                    Text("\(viewModel.incorrectGuesses) ❌")
                } .font(.system(size: 30))
                Spacer()
                // Pass in BottomTextView to use template button Re-Take-Quiz buttom
                NavigationLink(destination: GameView(), label: {BottomTextView(str: "Re-Take Quiz")})
            }
        }
        .navigationBarHidden(true)
        .foregroundColor(.black)
    }
}

struct ScoreView_Previews: PreviewProvider {
    static var previews: some View {
        // Must pass in number of correct and incorrect guesses
        ScoreView(viewModel: ScoreViewModel(correctGuesses: 8, incorrectGuesses: 2))
    }
}
