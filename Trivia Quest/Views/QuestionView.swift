//
//  QuestionView.swift
//  Trivia Quest
//
//  Created by Matthew Thompson on 28/06/2022.
//

//****************************************************************************
//*         QuestionView File ~ How each question will be presented          *
//****************************************************************************

import SwiftUI

struct QuestionView: View {
    
    @EnvironmentObject var viewModel: GameViewModel
    let question: Question
    
    var body: some View {
        VStack {
            // Display question
            Text(question.questionText)
                .font(.largeTitle)
                .bold()
                .multilineTextAlignment(.leading)
                .padding()
            Spacer()
            HStack {
                // Loop through each question's answer options and generate a horizontal line of buttons.
                ForEach(0..<question.possibleAnswers.count) { answerIndex in
                    Button(action: {
                        print("Tapped on option with the text: \(question.possibleAnswers[answerIndex])")
                        viewModel.makeGuess(atIndex: answerIndex)
                    }, label: {
                        // Call ChoiceTextView to follow button template
                        ChoiceTextView(choiceText:
                                        question.possibleAnswers[answerIndex])
                        .background(viewModel.color(forOptionIndex: answerIndex))
                    })
                    // Disable the buttons after user has made their choice
                    .disabled(viewModel.guessWasMade)
                }
            }
            // Display button to go to the next page after a choice is made.
            if viewModel.guessWasMade {
                Button(action: {
                    viewModel.displayNextScreen()
                }, label: {
                    BottomTextView(str: "Next")
                })
            }
        }
    }
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView(question: Game().currentQuestion)
            .environmentObject(GameViewModel())
    }
}
