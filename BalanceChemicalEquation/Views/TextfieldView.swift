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
    }
}

#Preview {
    TextfieldView(correctAnswer: 2)
}
