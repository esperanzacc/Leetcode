//
//  TwoSum.swift
//  Swift - AGDS
//
//  Created by Esperanza on 2022-10-05.
//

import Foundation

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
  
  // brute force
  // O(n^2)
  //  if nums.isEmpty { return [Int]() }
  //  var result = [Int]()
  //  var nums = nums
  //  for i in 0...nums.count - 2 {
  //      var anotherNum = target - nums[i]
  //      for j in i + 1...nums.count - 1 {
  //          if nums[j] == anotherNum {
  //             result.append(i)
  //             result.append(j)
  //             break
  //          }
  //      }
  //  }
  //
  //  return result
  
  // another way to solve
  // time complexity O(n)
  // space complexity O(m) -> nums.count - 1
  if nums.isEmpty { return [Int]() }
  var result = [Int]()
  var nums = nums
  for i in 0...nums.count - 2 { // ->2 target = 7
    var anotherNum = target - nums[i] // -> 5
    var searchArr = nums[i+1...nums.count - 1]
    if searchArr.contains(anotherNum) {
      var index = searchArr.firstIndex(of: anotherNum)!
      if index != i {
        result.append(i)
        result.append(index)
      }
    }
  }
  return result
  
}
