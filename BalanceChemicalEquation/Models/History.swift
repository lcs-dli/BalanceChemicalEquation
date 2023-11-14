//
//  History.swift
//  BalanceChemicalEquation
//
//  Created by David Li on 2023-11-04.
//

import Foundation
struct History: Identifiable{
    let id = UUID()
    let question: ChemicalEquation
    let userGuess: [Int]
}
var guessHolder: [Int] = [0,0,0,0]


