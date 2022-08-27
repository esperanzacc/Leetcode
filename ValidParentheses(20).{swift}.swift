//
//  ValidParentheses(20).swift
//  Swift - AGDS
//
//  Created by Esperanza on 2022-08-27.
//

import Foundation
func isValid(_ s: String) -> Bool {
    if s.count % 2 != 0 { return false }
    
    let dictionary: [Character: Character] = [")": "(","]" :"[","}" :"{"]
    let open: [Character] = ["(", "[", "{"]
    let close: [Character] = [")", "]", "}"]
    var openers: [Character] = [Character]()

    for char in s {
        if open.contains(char) {
            openers.append(char)
        } else {
            if openers.last == dictionary[char] {
                openers.removeLast()
            } else {
                return false
            }
        }
    }
    
    return openers.isEmpty
}
