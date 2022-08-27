//
//  LongestCommonPrefix(14).swift
//  Swift - AGDS
//
//  Created by Esperanza on 2022-08-27.
//

import Foundation

func longestCommonPrefix(_ strs: [String]) -> String {
        if strs.isEmpty { return "" }
        if strs.count == 1 { return strs[0] }

        let strs = strs.sorted()
        var output = ""
        for (char1, char2) in zip(strs.first!, strs.last!) {
            if char1 == char2 {
                output += String(char1)
            } else {
                break
            }
        }
        return output
  
}
