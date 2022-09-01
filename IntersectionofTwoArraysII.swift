//
//  Intersection of Two Arrays II.swift
//  Swift - AGDS
//
//  Created by Esperanza on 2022-08-30.
//

import Foundation
func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
  // Break it down
  // 1. use hashmap change nums1 array to dictionary
  // 2. go through nums2 to look up whether the elements inside nums1 or not
  // 3. if find, value of dictionaries count 1, put the num into result[]
  // 4. return result
  var result = [Int]()
  var dict = [Int : Int]()
  
  for num in nums1 {
    dict[num, default: 0] += 1
    print(dict)
  }
  
  for nums in nums2 {
    // go check can find the dict[num] in dict or not
    guard let count = dict[nums], count > 0 else { continue }
    result.append(nums)
    dict[nums] = count - 1
  }
  typealias Thing = [String:Any]
  var stuff: Thing
  print(type(of: stuff))
  return result
}
    
