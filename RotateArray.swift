//
//  RotateArray.swift
//  Swift - AGDS
//
//  Created by Esperanza on 2022-08-28.
//

import Foundation

//func rotate(_ nums: inout [Int], _ k: Int) {
//  var newArr = nums
//  var nums = nums
//  if !(nums.isEmpty) {
//    for i in 0...nums.count - 1 {
//      if (i + k) > nums.count - 1 {
//        newArr[i + k - nums.count] = nums[i]
//      } else {
//        newArr[i + k] = nums[i]
////        print("Iteration \(i + 1) nums: \(nums)")
//      }
////      print(nums)
//
//    }
//  }
//  print(newArr)
//
//}

func rotate(_ nums: inout [Int], _ k: Int) {
  // understand the problem : have to use O(1) space memory
  // explore concrete examples -> if k > nums.count -> k% nums.count -> how many interations are the same arrangement as the original one -> remainder will be the numbers of nums change
  // break it down
  // 1. how many iterations
  // 2. based on 1. change the positions
  var nums = nums
  let k = k % nums.count
  let length = nums.count
  if !(nums.isEmpty) {
    nums = Array(nums[length - k..<length]) + Array(nums[0..<length - k])
 }
  print(nums)
  
}
