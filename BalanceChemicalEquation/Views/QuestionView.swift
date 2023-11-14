//
//  QuestionView.swift
//  BalanceChemicalEquation
//
//  Created by David Li on 2023-11-01.
//

import SwiftUI
import LaTeXSwiftUI



struct QuestionView: View {
    //MARK: Storing property
    @State var currentDisplayedEquation: ChemicalEquation = questions.randomElement()!
    @State var userAnswers: [Int] = []
    @State var tempetoryHolder: String = ""
    @State var userHistory: [History] = []
    
    @State var selectedReactionFilter: ChemicalReactionType = .all
    //MARK: Computing property
    var body: some View {
        VStack {
            VStack{
                Text(currentDisplayedEquation.unbalancedEquation)
                Grid{
                    ForEach(1...currentDisplayedEquation.spotNeedToBalance, id: \.self){j in
                        TextfieldView(correctAnswer: currentDisplayedEquation.correctBalancedNumber[j-1], indexInList: j-1)
                    }
                }
                Button(action: {
                    userHistory.append(History(question: currentDisplayedEquation, userGuess: guessHolder))
                    
                    currentDisplayedEquation = questions.randomElement()!
                    
                }, label: {
                    Text("New Question")
                })
            }
            VStack{
                Picker("Filtering on", selection: $selectedReactionFilter){
                    Text("All").tag(ChemicalReactionType.all)
                    Text("Synthesis").tag(ChemicalReactionType.synthesis)
                    Text("Decomposition").tag(ChemicalReactionType.decomposition)
                    Text("Single Displacement").tag(ChemicalReactionType.singleDisplacement)
                    Text("Double Displacement").tag(ChemicalReactionType.doubleDisplacement)
                    Text("Combustion").tag(ChemicalReactionType.combustion)
                }
                List(
                    filtering(originalList: userHistory, on: selectedReactionFilter)
                ){ currentDisplayedHistory in
                    VStack {
                        Text(currentDisplayedHistory.question.unbalancedEquation)
                        HStack {
                            Text("Reacation Type")
                            Text(currentDisplayedHistory.question.typeOfChemicalReaction)
                        }
                        HStack {
                            Text("Guess: ")
                            
                            ForEach(0...currentDisplayedHistory.question.spotNeedToBalance-1, id: \.self){ i in
                                HStack{
                                    Text(String(currentDisplayedHistory.userGuess[i]))
                                }
                            }
                        }
                        
                        HStack {
                            Text("Correct Answer: ")
                            
                            ForEach(0...currentDisplayedHistory.question.spotNeedToBalance-1, id: \.self){ i in
                                HStack{
                                    Text(String(currentDisplayedHistory.question.correctBalancedNumber[i]))
                                }
                            }
                        }
                    }
                    
                    
                }
            }
        }
    }
}

#Preview {
    QuestionView()
}
