//
//  SearchInsertPosition(35).swift
//  Swift - AGDS
//
//  Created by Esperanza on 2022-08-27.
//

import Foundation
func searchInsert(_ nums: [Int], _ target: Int) -> Int {
    for index in 0..<nums.count {
        if nums[index] == target || nums[index] > target {
            return index
        }
    }
    return nums.count
}
