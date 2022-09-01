//
//  RemoveDuplicateArray.swift
//  Swift - AGDS
//
//  Created by Esperanza on 2022-08-24.
//

import Foundation

func removeDuplicates(_ nums: [Int]) -> Int {
  // Break it down
  var nums = nums
          if nums.count == 0 {
              return 0
          } else if nums.count == 1 {
              return 1
          }
          // 1. check the next index of nums whether it is the same as the next next             index of nums or not
          var k = 1
          // if it is not same, we can in place the nums with the preindex of nums
          
          for j in 1...nums.count - 1 {
              if nums[j] != nums[j - 1] {
                  nums[k] = nums[j]
                  k += 1
              }
          }
           // 3. return the k
              return k
}

