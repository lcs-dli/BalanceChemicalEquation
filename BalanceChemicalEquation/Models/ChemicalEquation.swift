//
//  ChemicalEquation.swift
//  BalanceChemicalEquation
//
//  Created by David Li on 2023-11-02.
//

import Foundation

struct ChemicalEquation: Identifiable{
    let id = UUID()
    let unbalancedEquation: String
    let correctBalancedNumber: [Int]
    let spotNeedToBalance: Int
    let typeOfChemicalReaction: String
}

let questions: [ChemicalEquation] = [
    ChemicalEquation( unbalancedEquation: "N2 + O2 --> N2O5",
    correctBalancedNumber: [2,5,2],
    spotNeedToBalance: 3,
    typeOfChemicalReaction: "Synthesis"
), 
    ChemicalEquation(unbalancedEquation: "H3PO4 + KOH --> K3PO4 + H2",
    correctBalancedNumber: [1,3,1,3],
    spotNeedToBalance: 4,
    typeOfChemicalReaction: "Double Displacement"
),
    ChemicalEquation(unbalancedEquation: "K + B2O3 --> K2O + B",
    correctBalancedNumber: [6,1,3,2],
    spotNeedToBalance: 4,
    typeOfChemicalReaction: "Single Displacement"
),
    ChemicalEquation(unbalancedEquation: "HCl + NaOH --> NaCl + H2O",
    correctBalancedNumber: [1,1,1,1],
    spotNeedToBalance: 4,
    typeOfChemicalReaction: "Double Displacement"
),
    ChemicalEquation(unbalancedEquation: "C + S8 --> CS2",
    correctBalancedNumber: [4,1,4],
    spotNeedToBalance: 3,
    typeOfChemicalReaction: "Synthesis"
),
    ChemicalEquation(unbalancedEquation: "C10H12 + O2 --> CO2 + H2O",
    correctBalancedNumber: [2,31,20,22],
    spotNeedToBalance: 4,
    typeOfChemicalReaction: "Combustion"
),
    ChemicalEquation(unbalancedEquation: "CH3CH2CH2CH3 + O2 --> CO2 + H2O",
    correctBalancedNumber: [2,13,8,10],
    spotNeedToBalance: 4,
    typeOfChemicalReaction: "Combustion"
),
    ChemicalEquation(unbalancedEquation: "KOH + HBr --> KBr + H2O",
    correctBalancedNumber: [1,1,1,1],
    spotNeedToBalance: 4,
    typeOfChemicalReaction: "Double Displacement"
),
    ChemicalEquation(unbalancedEquation: "Na + O2 --> Na2O",
    correctBalancedNumber: [4,1,2],
    spotNeedToBalance: 3,
    typeOfChemicalReaction: "Synthesis"
),
    ChemicalEquation(unbalancedEquation: "NH3 + O2 --> N2 + H2O",
    correctBalancedNumber: [4,3,2,6],
    spotNeedToBalance: 4,
    typeOfChemicalReaction: "Single Displacement"
),
    ChemicalEquation(unbalancedEquation: "H2CO3 -> CO2 + H2O",
    correctBalancedNumber: [1,1,1],
    spotNeedToBalance: 3,
    typeOfChemicalReaction: "Decomposition"
), ]
