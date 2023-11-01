//
//  QuestionView.swift
//  BalanceChemicalEquation
//
//  Created by David Li on 2023-11-01.
//

import SwiftUI
import LaTeXSwiftUI

struct ChemicalEquation: Identifiable{
    let id = UUID()
    let unbalancedEquation: String
    let correctBalancedNumber: [Int]
    let spotNeedToBalance: Int
    
}
//let questions: [ChemicalEquation] = [ChemicalEquation(unbalancedEquation: "N2 + O2 --> N2O5", correctBalancedNumber: <#T##[Int]#>, spotNeedToBalance: <#T##Int#>)]

struct QuestionView: View {
    //MARK: Storing property
  //  @State var currentDisplayedEquation: ChemicalEquation = questions[0]
    
    let subscrip = "7"
    
    //MARK: Computing property
    var body: some View {
        VStack{
            LaTeX("$H_{\(subscrip)}O$")
            
//            Grid{
//                ForEach
//            }
        }
    }
}

#Preview {
    QuestionView()
}
