//
//  Function.swift
//  BalanceChemicalEquation
//
//  Created by David Li on 2023-11-06.
//

import Foundation

func filtering(originalList: [History], on desiredReactionType: ChemicalReactionType) -> [History] {
    if desiredReactionType == .all{
        return originalList
    }
    
    var filteredHistory: [History] = []
    
    for history in originalList {
        if (history.question.typeOfChemicalReaction == desiredReactionType.rawValue){
            filteredHistory.append(history)
        }
        print(desiredReactionType.rawValue)
        print(history.question.typeOfChemicalReaction)
    }
    
    return filteredHistory
}
