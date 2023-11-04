//
//  TextfieldView.swift
//  BalanceChemicalEquation
//
//  Created by David Li on 2023-11-02.
//

import SwiftUI



struct TextfieldView: View {
    //MARK: Stored property
    let correctAnswer: Int
    @State var userAnswer = ""
    @State var response: Outcome = .undetermined
    let indexInList: Int
    //MARK: Computing property
    var body: some View {
        HStack{
            TextField("Test", text: $userAnswer)
            
            Text(response.rawValue)
            
            Button(action: {
                checkAnswer()
            }, label: {
                Text("Submit")
            })
            
            
        }
        .padding()
    }
    
    //MARK: Function
    func checkAnswer(){
        if(Int(userAnswer) == correctAnswer){
            response = .correct
        }else{
            response = .incorrect
        }
        guessHolder.insert(Int(userAnswer)!, at: indexInList)
        guessHolder.remove(at: indexInList+1)
    }
}

#Preview {
    TextfieldView(correctAnswer: 2, indexInList: 2)
}
