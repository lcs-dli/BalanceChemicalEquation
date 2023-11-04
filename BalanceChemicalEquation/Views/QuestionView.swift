//
//  QuestionView.swift
//  BalanceChemicalEquation
//
//  Created by David Li on 2023-11-01.
//

import SwiftUI
import LaTeXSwiftUI


let questions: [ChemicalEquation] = [ChemicalEquation(
    unbalancedEquation: "N2 + O2 --> N2O5",
    correctBalancedNumber: [2,5,2],
    spotNeedToBalance: 3,
    typeOfChemicalReaction: "Synthesis"
)]

struct QuestionView: View {
    //MARK: Storing property
    @State var currentDisplayedEquation: ChemicalEquation = questions[0]
    @State var userAnswers: [Int] = []
    @State var tempetoryHolder: String = ""
    
    //MARK: Computing property
    var body: some View {
        VStack{
            //LaTeX("$H_{\(subscrip)}O$")
            Text(currentDisplayedEquation.unbalancedEquation)
            Grid{
                ForEach(1...currentDisplayedEquation.spotNeedToBalance, id: \.self){j in
                    TextfieldView(correctAnswer: currentDisplayedEquation.correctBalancedNumber[j-1], indexInList: j-1)
                }
            }
            Button(action: {
                userHistory.append(History(question: currentDisplayedEquation, userGuess: guessHolder))
            }, label: {
                Text("Save Result")
            })
        }
    }
}

#Preview {
    QuestionView()
}
