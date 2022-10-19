//
//  ValidSudoku(36).swift
//  Swift - AGDS
//
//  Created by Esperanza on 2022-10-18.
//

import Foundation
func isValidSudoku(_ board: [[Character]]) -> Bool {
    if board.isEmpty { return false }
    
    var seen = Set<String>()
    
    for i in 0..<board.count {
        for j in 0..<board[i].count {
            let currentChar = "\(board[i][j])"
            if board[i][j] != "." {
                // check row
                var row = "\(currentChar) is seen at row \(i)"
                if !seen.contains(row) {
                    seen.insert(row)
                } else {
                    return false
                }
                
                // check column
                var column = "\(currentChar) is seen at column \(j)"
                if !seen.contains(column) {
                    seen.insert(column)
                } else {
                    return false
                }
                
                // check box
                var box = "\(currentChar) is seen at box \(i/3) \(j/3)"
                if !seen.contains(box) {
                    seen.insert(box)
                } else {
                    return false
                }
            }
            
        }
    }
    return true
}
