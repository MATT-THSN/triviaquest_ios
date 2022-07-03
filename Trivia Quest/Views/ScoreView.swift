//
//  ScoreView.swift
//  Trivia Quest
//
//  Created by Matthew Thompson on 29/06/2022.
//

import SwiftUI

struct ScoreView: View {
    let viewModel: ScoreViewModel
    
    var body: some View {
        ZStack {
            GameColor.main.ignoresSafeArea()
            VStack {
                Spacer()
                Text("Final Score:")
                    .font(.body)
                    .padding()
                Text("\(viewModel.percentage)%")
                    .font(.system(size: 50))
                    .bold()
                    .padding()
                Spacer()
                VStack {
                    Text("\(viewModel.correctGuesses) ✅")
                    Text("\(viewModel.incorrectGuesses) ❌")
                } .font(.system(size: 30))
                Spacer()
                NavigationLink(destination: GameView(), label: {BottomTextView(str: "Re-Take Quiz")})
            }
        }
        .navigationBarHidden(true)
        .foregroundColor(.black)
    }
}

struct ScoreView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreView(viewModel: ScoreViewModel(correctGuesses: 8, incorrectGuesses: 2))
    }
}
