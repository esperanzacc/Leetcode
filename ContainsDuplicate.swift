//
//  ContainsDuplicate.swift
//  Swift - AGDS
//
//  Created by Esperanza on 2022-08-29.
//

import Foundation
func containsDuplicate(_ nums: [Int]) -> Bool {
  
  var nums = nums
  var result = false

  if nums.isEmpty { return false }
  if nums.count == 1 { return false }
  
  nums.sorted(by: <)
  for i in 0..<nums.count {
    if nums[i] == nums[i + 1] {
      result = true
    }
  }
  
  return result
  

//  for i in 0..<nums.count {
////    let a = nums.remove(at: i)
//    if nums[i + 1..<nums.count].contains(nums[i]) {
//      result = true
//    }
//  }
//  print(result)
//  return result
        
}
