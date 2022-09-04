//
//  MoveZeros.swift
//  Swift - AGDS
//
//  Created by Esperanza on 2022-09-03.
//

import Foundation
func moveZeroes(_ nums: inout [Int]) {

  // Break it down
  // 1. check how zeroes in array -> move to final index of array until find the element is not 0
  // [0,1,0,3,12] -> [1,3,12,0,0]
    var l = 0
    if nums.count == 1 {
    return
  }
        
  for r in 0...(nums.count - 1) {
    if nums[r] != 0 {
      nums.swapAt(r, l)
      l += 1
    }
  }
  
        
}
