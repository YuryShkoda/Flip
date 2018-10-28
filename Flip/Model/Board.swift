//
//  Board.swift
//  Flip
//
//  Created by Yury on 10/28/18.
//  Copyright © 2018 Yury Shkoda. All rights reserved.
//

import UIKit

class Board: NSObject {
    static let size = 8
    static let moves = [
        Move(row: -1, col: -1),
        Move(row:  0, col: -1),
        Move(row:  1, col: -1),
        Move(row: -1, col:  0),
        Move(row:  1, col:  0),
        Move(row: -1, col:  1),
        Move(row:  0, col:  1),
        Move(row:  1, col:  1)]
    
    var rows = [[StoneColor]]()
    var currentPlayer = Player.allPlayers[0]
    
    func canMoveIn(row: Int, col: Int) -> Bool {
        // test 1: move is sensible
        if !isInBounds(row: row, col: col) { return false }
        
        // test 2: move hasn't been made already
        let stone = rows[row][col]
        
        if stone != .empty { return false }
        
        // test 3: the move is legal
        for move in Board.moves {
            var passedOpponent = false
            var currentRow     = row
            var currentCol     = col
            
            for _ in 0 ..< Board.size {
                currentRow += move.row
                currentCol += move.col
                
                guard isInBounds(row: currentRow, col: currentCol) else { break }
                
                let stone = rows[currentRow][currentCol]
                
                if stone == currentPlayer.opponent.stoneColor {
                    passedOpponent = true
                } else if  stone == currentPlayer.stoneColor && passedOpponent {
                    return true
                } else {
                    break
                }
            }
        }
        
        return false
    }
    
    func isInBounds(row: Int, col: Int) -> Bool {
        if row < 0 { return false }
        if col < 0 { return false }
        if row >= Board.size { return false }
        if col >= Board.size { return false }
        
        return true
    }
}
