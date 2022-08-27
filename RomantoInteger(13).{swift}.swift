//
//  RomantoInteger(13).swift
//  Swift - AGDS
//
//  Created by Esperanza on 2022-08-27.
//

import Foundation
func romanToInt(_ s: String) -> Int {
        let dict = ["I" : 1, "V": 5, "X" : 10, "L" : 50, "C" : 100, "D" : 500, "M" : 1000]
    
        var n = s.count - 1
        let arr = s.map { String($0) }
        var prev = 0
        var sum = 0

        while n >= 0 {
            guard let current = dict[arr[n]] else {
                      return sum
            }

            if prev > current && prev > 0 {
                sum = sum - current
            } else {
                sum = sum + current
            }

            prev = current
            n -= 1
        }

        return sum
    }
