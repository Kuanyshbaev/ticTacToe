//
//  TicTacToe.swift
//  tictaktoe
//
//  Created by Baurzhan Kuanyshbayev on 22.04.2024.
//

import Foundation

class TicTacToe {
    var arrayXO: [XO] = []
    var isX = true
    var isComputer = false
    let WinCombination = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]
    
    init() {
        for _ in 0...8 {
            let XO = XO()
            arrayXO.append(XO)
        }
    }
    func choiseXO(index: Int) {
        if isX {
            arrayXO[index].label = "❌"
        } else {
            arrayXO[index].label = "⭕️"
        }
        arrayXO[index].isFaceUp = true
        isX.toggle()
    }
    func win() -> String? {
        for i in WinCombination {
            if arrayXO[i[0]].label == arrayXO[i[1]].label 
                && arrayXO[i[1]].label == arrayXO[i[2]].label
                && arrayXO[i[0]].label != nil
            {
                return arrayXO[i[0]].label
            }
        }
        if !arrayXO.contains(where: { XO2 in
            if XO2.label == nil {
                return true
            } else {
                return false
            }
        })
        {
            return "Draw"
        }
       return nil
    }
}
