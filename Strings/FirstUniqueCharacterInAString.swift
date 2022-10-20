//
//  FirstUniqueCharacterInAString.swift
//  Swift - AGDS
//
//  Created by Esperanza on 2022-10-20.
//

import Foundation

func firstUniqChar(_ s: String) -> Int {
  
  // create a hashtable to count how many times a letter appears in a string
        
    var dict : [Character: Int] = [:]
    
  // use loop to store the result
    for char in s {
        dict[char, default: 0] += 1
    }
    
  // cuz hashtable with no order. we have to loop over the string and find the first letter of index
    for (index, char) in s.enumerated() {
        if dict[char] == 1 {
            return index
        }
    }
    
    return -1
    
}
