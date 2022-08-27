//
//  PlusOne.swift
//  Swift - AGDS
//
//  Created by Esperanza on 2022-08-25.
//

import Foundation

func plusOne(_ digits: [Int]) -> [Int] {
  // Break it Down
  // need to modify digits
  var digits = digits
  // check digits is Empty or not
  if digits.isEmpty { return [] }

  // 1. from the last index of digits and check it is 9 or not
   var index = digits.count - 1
  while index >= 0, digits[index] == 9 {
      // 2. if it is 9, expect for replacing original digit to 0 and have to check the previous index of digit is 9 or not
      digits[index] = 0
      // go check the previous one
      index -= 1
  }
  // 3. if it is not 9, just plus one
  // 4. return the output
  if index == -1 {
      digits.insert(1, at:0)
      return digits
  } else {
      digits[index] += 1
      return digits
  }
  
}
  
  

