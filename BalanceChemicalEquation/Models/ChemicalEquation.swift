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


