//
//  LongestIncreasingSubsequence(300).swift
//  Swift - AGDS
//
//  Created by Esperanza on 2022-08-26.
//

import Foundation

func lengthOfLIS(_ nums: [Int]) -> Int {
       if nums.count == 0 { return 0 }
  var d = [Int](repeating: 0, count: nums.count)
  
  for i in 0..<nums.count {
    d[i] = 1
    for j in 0..<i {
      if nums[j] < nums[i] && d[i] < d[j] + 1 {
        d[i] = d[j] + 1
      }
    }
  }
  
  return d.max()!
}

