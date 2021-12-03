//
//  Player.swift
//  TicTacToe
//
//  Created by Manne Sahlin on 2021-12-02.
//

import Foundation

class Player{
    var listOfSquares: [Int]?
    var name: String
    var score: Int
    
    init(listOfSquares: Array <Int>?, name: String, score: Int){
        
        self.listOfSquares = listOfSquares
        self.name = name
        self.score = score
        
    }
    
    
    
}
