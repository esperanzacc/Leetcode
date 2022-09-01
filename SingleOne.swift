//
//  SingleOne.swift
//  Swift - AGDS
//
//  Created by Esperanza on 2022-08-29.
//

import Foundation
//func singleNumber(_ nums: [Int]) {
//
//  // Break it Down
//  // 1. sort nums
//  // 2. remove duplicate num
//  // 3. found nums[0]
//  var nums = nums
//  nums.sorted(by: <)
//  print(nums.filter { $0 != $1 })
//
//}
func singleNumber(_ nums: [Int]) -> Int {
    let distinctNums = Set(nums)
  
  print(distinctNums.reduce(0, +) * 2)
  print(nums.reduce(0, +))

  return distinctNums.reduce(0, +) * 2 - nums.reduce(0, +)
}

//func singleNumber(_ nums: [Int]) -> Int {
//    return nums.reduce(0, ^)
//}
