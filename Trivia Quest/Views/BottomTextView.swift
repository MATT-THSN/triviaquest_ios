//
//  BottomTextView.swift
//  Trivia Quest
//
//  Created by Matthew Thompson on 27/06/2022.
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
        }
        .background(GameColor.alt)
        .foregroundColor(.white)
    }
}

struct BottomTextView_Previews: PreviewProvider {
    static var previews: some View {
        BottomTextView(str: "Demo")
    }
}
