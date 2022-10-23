//
//  ValidPalidrome(127).swift
//  Swift - AGDS
//
//  Created by Esperanza on 2022-10-22.
//

import Foundation
func isPalindrome(_ s: String) -> Bool {
    // create array of s
    // create 2 pointers
    // create helper func to check the char is alpha or num or not
    // check arrayS[leftIndex] == arrayS[rightIndex]
    var arrayS = Array(s.lowercased())
    var leftIndex = 0
    var rightIndex = arrayS.count - 1
    
    while leftIndex < rightIndex {
        if !(isAlphaNum(char: arrayS[leftIndex])) {
            leftIndex += 1
            continue
        }
        
        if !(isAlphaNum(char: arrayS[rightIndex])) {
            rightIndex -= 1
            continue
        }
        
        if !(arrayS[leftIndex] == arrayS[rightIndex]) {
            return false
        } else {
             leftIndex += 1
             rightIndex -= 1
        }

    }
     return true
}

func isAlphaNum(char: Character) -> Bool {
    return (char.isLetter) || (char.isNumber)
}
