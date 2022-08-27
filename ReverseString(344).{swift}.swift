//
//  ReverseString(344).swift
//  Swift - AGDS
//
//  Created by Esperanza on 2022-08-27.
//

import Foundation
class Solution {
    func reverseString(_ s: inout [Character]) {
      
      // call recursive helper function
      swapCharacters(atLeftPoint: 0,
                     atRightPoint: s.count - 1,
                     in: &s
                      )
}
      
  func swapCharacters(atLeftPoint left: Int,
                      atRightPoint right: Int,
                      in array: inout[Character]) {
    
          // base case ( when it ends with this function)
          guard left < right else { return }
          
          // do what
          array.swapAt(left, right)
          
          // recursive case
          swapCharacters(atLeftPoint: left + 1,
                         atRightPoint: right - 1,
                         in: &array)
      
    }
}
