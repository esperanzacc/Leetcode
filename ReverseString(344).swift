//
//  ReverseString(344).swift
//  Swift - AGDS
//
//  Created by Esperanza on 2022-10-18.
//

import Foundation
func reverseString(_ s: inout [Character]) {
        
    if s.isEmpty { return }
    
    for i in 0..<s.count/2 {
        let temp = s[i]
        s[i] = s[s.count - 1 - i]
        s[s.count - 1 - i] = temp
    }
  
}
