//
//  MaximumSubarray(53).swift
//  Swift - AGDS
//
//  Created by Esperanza on 2022-08-26.
//

import Foundation
class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        let n = nums.count
  var d = [Int](repeating: 0, count: n)
  d[0] = nums[0]
  
  for i in 1..<n {
    d[i] = nums[i]
    if d[i] < d[i - 1] + nums[i] {
      d[i] = d[i - 1] + nums[i]
    }
  }
  
  return d.max()!
        
    }
}
