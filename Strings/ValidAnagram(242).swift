//
//  ValidAnagram().swift
//  Swift - AGDS
//
//  Created by Esperanza on 2022-10-23.
//

import Foundation
func isAnagram(_ s: String, _ t: String) -> Bool {
    if s.isEmpty && t.isEmpty { return false }
    if s.count != t.count { return false }
    
    var sArr = Array(s)
    var dict = [Character: Int]()
    
    for char in sArr {
        dict[char, default: 0] += 1
    }
    
    for char in t {
        if dict.contains { $0.key == char } {
            if dict[char]! == 0 {
                return false
            } else {
                 dict[char]! -= 1
            }
           
        } else {
            return false
        }
    }
    
    return true
}
