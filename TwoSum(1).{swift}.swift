//
//  TwoSum(1).swift
//  Swift - AGDS
//
//  Created by Esperanza on 2022-08-26.
//

import Foundation

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
       // take 1 element, and calculate target - element
       // the number we search inside the nums
       // append result
       // O(n)
       var dict = [Int:Int]()
       
       for (index, num) in nums.enumerated() {
           let value = target - num
           if let indexOfValue = dict[value] {
               return [indexOfValue, index]
           }
           dict[num] = index
       }
       
       return []
   }
